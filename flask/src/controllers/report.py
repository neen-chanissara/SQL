from flask import Blueprint, current_app, request, jsonify
from ..models import report
import time
import json

report_bp = Blueprint("report", __name__)


@report_bp.route("/sql/1/")
def sql_1_all():

    data_response = report.select_1()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


``
@report_bp.route("/sql/2/")
def sql_2_all():

    data_response = report.select_2()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/3/")
def sql_3_all():

    data_response = report.select_3()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)

@report_bp.route("/sql/4/")
def sql_4_all():

    data_response = report.select_4()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


``@report_bp.route("/sql/5/")
def sql_5_all():

    data_response = report.select_5()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/6/")
def sql_6_all():

    data_response = report.select_6()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)



@report_bp.route("/sql/7/")
def sql_7_all():

    data_response = report.select_7()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/8/")
def sql_8_all():

    data_response = report.select_8()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/9/")
def sql_9_all():

    data_response = report.select_9()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/10/")
def sql_10_all():

    data_response = report.select_10()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)



@report_bp.route("/sql/11/")
def sql_11_all():

    data_response = report.select_11()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)



@report_bp.route("/sql/12/")
def sql_12_all():

    data_response = report.select_12()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/13/")
def sql_13_all():

    data_response = report.select_13()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/14/")
def sql_14_all():

    data_response = report.select_14()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/15/")
def sql_15_all():

    data_response = report.select_15()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/16/")
def sql_16_all():

    data_response = report.select_16()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/17/")
def sql_17_all():

    data_response = report.select_17()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/18_1/")
def sql_18_1_all():

    data_response = report.select_18_1()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/18_2/")
def sql_18_2_all():

    data_response = report.select_18_2()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/19/")
def sql_19_all():

    data_response = report.select_19()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/20/")
def sql_20_all():

    data_response = report.select_20()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/21/")
def sql_21_all():

    data_response = report.select_21()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/22/")
def sql_22_all():

    data_response = report.select_22()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/23/")
def sql_23_all():

    data_response = report.select_23()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/24/")
def sql_24_all():

    data_response = report.select_24()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/25/")
def sql_25_all():

    data_response = report.select_25()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/26/")
def sql_26_all():

    data_response = report.select_26()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/27/")
def sql_27_all():

    data_response = report.select_27()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/28/")
def sql_28_all():

    data_response = report.select_28()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/29/")
def sql_29_all():

    data_response = report.select_29()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/30/")
def sql_30_all():

    data_response = report.select_30()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/31/")
def sql_31_all():

    data_response = report.select_31()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/32/")
def sql_32_all():

    data_response = report.select_32()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/33/")
def sql_33_all():

    data_response = report.select_33()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)       


@report_bp.route("/sql/34/")
def sql_34_all():

    data_response = report.select_34()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/35/")
def sql_35_all():

    data_response = report.select_35()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)       


@report_bp.route("/sql/36/")
def sql_36_all():

    data_response = report.select_36()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/37/")
def sql_37_all():

    data_response = report.select_37()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)



@report_bp.route("/sql/38/")
def sql_38_all():

    data_response = report.select_38()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/39/")
def sql_39_all():

    data_response = report.select_39()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/40/")
def sql_40_all():

    data_response = report.select_40()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/41/")
def sql_41_all():

    data_response = report.select_41()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/42/")
def sql_42_all():

    data_response = report.select_42()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/43/")
def sql_43_all():

    data_response = report.select_43()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/44/")
def sql_44_all():

    data_response = report.select_44()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/45/")
def sql_45_all():

    data_response = report.select_45()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/46/")
def sql_46_all():

    data_response = report.select_46()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/47/")
def sql_47_all():

    data_response = report.select_47()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/48/")
def sql_48_all():

    data_response = report.select_48()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/49/")
def sql_49_all():

    data_response = report.select_49()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/50/")
def sql_50_all():

    data_response = report.select_50()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/51/")
def sql_51_all():

    data_response = report.select_51()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/52/")
def sql_52_all():

    data_response = report.select_52()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/53/")
def sql_53_all():

    data_response = report.select_53()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/54/")
def sql_54_all():

    data_response = report.select_54()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/55/")
def sql_55_all():

    data_response = report.select_55()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/56/")
def sql_56_all():

    data_response = report.select_56()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/57/")
def sql_57_all():

    data_response = report.select_57()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/58/")
def sql_58_all():

    data_response = report.select_58()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/59/")
def sql_59_all():

    data_response = report.select_59()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/60/")
def sql_60_all():

    data_response = report.select_60()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/61/")
def sql_61_all():

    data_response = report.select_61()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/62/")
def sql_62_all():

    data_response = report.select_62()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/63/")
def sql_63_all():

    data_response = report.select_63()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/64/")
def sql_64_all():

    data_response = report.select_64()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/65/")
def sql_65_all():

    data_response = report.select_65()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/66/")
def sql_66_all():

    data_response = report.select_66()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)



@report_bp.route("/sql/67/")
def sql_67_all():

    data_response = report.select_67()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)



@report_bp.route("/sql/68/")
def sql_68_all():

    data_response = report.select_68()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)



@report_bp.route("/sql/69/")
def sql_69_all():

    data_response = report.select_69()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)



@report_bp.route("/sql/70/")
def sql_70_all():

    data_response = report.select_70()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/71/")
def sql_71_all():

    data_response = report.select_71()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/72/")
def sql_72_all():

    data_response = report.select_72()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/73/")
def sql_73_all():

    data_response = report.select_73()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/74/")
def sql_74_all():

    data_response = report.select_74()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/75/")
def sql_75_all():

    data_response = report.select_75()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/76/")
def sql_76_all():

    data_response = report.select_76()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/77/")
def sql_77_all():

    data_response = report.select_77()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/78/")
def sql_78_all():

    data_response = report.select_78()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)


@report_bp.route("/sql/79/")
def sql_79_all():

    data_response = report.select_79()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)



@report_bp.route("/sql/80/")
def sql_80_all():

    data_response = report.select_80()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)



@report_bp.route("/sql/81/")
def sql_81_all():

    data_response = report.select_81()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)




@report_bp.route("/sql/82/")
def sql_82_all():

    data_response = report.select_82()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)




@report_bp.route("/sql/83/")
def sql_83_all():

    data_response = report.select_83()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)



@report_bp.route("/sql/84/")
def sql_84_all():

    data_response = report.select_84()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)




@report_bp.route("/sql/85/")
def sql_85_all():

    data_response = report.select_85()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)




@report_bp.route("/sql/86/")
def sql_86_all():

    data_response = report.select_86()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)



@report_bp.route("/sql/87/")
def sql_87_all():

    data_response = report.select_87()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)




@report_bp.route("/sql/88/")
def sql_88_all():

    data_response = report.select_88()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)




@report_bp.route("/sql/89/")
def sql_89_all():

    data_response = report.select_89()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)




@report_bp.route("/sql/90/")
def sql_90_all():

    data_response = report.select_90()
    timestampStr = int(time.time() * 1000)

    if data_response:

        resp_obj = {
            "timestamp": timestampStr,
            "status": True,
            "message": "Success",
            "data": data_response
        }
        return jsonify(resp_obj)

    else:
        response = {
            "timestamp": timestampStr,
            "status": False,
            "message": "Get Report Data of Status is Empty!",
            "data": None
        }
        return jsonify(response)