"""Dump a tfevent and start tensorboard by passing .meta path"""
import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'
import argparse
import tensorflow.compat.v1 as tf
from tensorboard import program


tf.logging.set_verbosity(tf.compat.v1.logging.ERROR)


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("-i", required=True, help='input meta file path')
    args = parser.parse_args()

    base_dir = os.path.abspath(os.path.dirname(args.i))

    graph = tf.Graph()
    with graph.as_default():
        tf.train.import_meta_graph(args.i)
        writer = tf.summary.FileWriter(base_dir, graph)
        writer.close()

    tb = program.TensorBoard()
    tb.configure(argv=[None, '--logdir', base_dir])
    url = tb.launch()
    input(f"running {url}, press enter to exit...")
