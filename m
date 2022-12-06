Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7E3644A05
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Dec 2022 18:12:38 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 35D0D3F0C9
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Dec 2022 17:12:37 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 222923EE66
	for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Dec 2022 17:12:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=quicinc.com header.s=qcppdkim1 header.b=Luo7gIcf;
	spf=pass (lists.linaro.org: domain of quic_charante@quicinc.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=quic_charante@quicinc.com;
	dmarc=pass (policy=none) header.from=quicinc.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2B6EIKMp011077;
	Tue, 6 Dec 2022 17:12:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=gbTI29gU+RaHEPzdX7DpjRFQgHj1oOdJ8MG0Mzj+dW8=;
 b=Luo7gIcfIhx86tRGFEAZISIffml4S0UiBxa/iAiY2imkZeovRUh/CTPLJKEeGhn0slko
 ktcE9sZKie0ogS/X/rfSV4pPgCaBgqHPH2T7lXKdEuoBEgwTnZjJSEYBIN4SnfWg0laH
 Mys9w0hkDiRokNPz4hTVdAsTi6TsodThug8yoKPoqTlxA+kdFxUNIslpRQtxBuwOkAps
 9fMltYMbQ2LwPRIdSbo10k39CRTXJB3hLfmV0Uo69Q/tmujAO6wGnGKGcSGxaaCVsHr/
 VbbVcLVqipMtEJaGWsoXgq+OG5AS6gsXu7AQg0svThoDWj+QzfaEPchw7YXtrj1AnJL5 0w==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3m9eev4arv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 06 Dec 2022 17:12:07 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 2B6HC6UH011188
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 6 Dec 2022 17:12:06 GMT
Received: from [10.216.56.35] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Tue, 6 Dec 2022
 09:12:04 -0800
Message-ID: <2d0182b8-c154-e763-bc2a-323e2faa120b@quicinc.com>
Date: Tue, 6 Dec 2022 22:42:01 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
        <cuigaosheng1@huawei.com>, <tjmercier@google.com>,
        <sumit.semwal@linaro.org>
References: <20221206151207.8801-1-christian.koenig@amd.com>
From: Charan Teja Kalla <quic_charante@quicinc.com>
In-Reply-To: <20221206151207.8801-1-christian.koenig@amd.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: eELwQd6EbxOeYlM3M7c04YJfQbls5CVb
X-Proofpoint-GUID: eELwQd6EbxOeYlM3M7c04YJfQbls5CVb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-12-06_11,2022-12-06_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=815 bulkscore=0
 adultscore=0 clxscore=1015 priorityscore=1501 phishscore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2210170000
 definitions=main-2212060143
X-Rspamd-Queue-Id: 222923EE66
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	DWL_DNSWL_HI(-3.50)[quicinc.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[205.220.168.131:from,129.46.96.20:received];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[quicinc.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:205.220.168.131];
	R_DKIM_ALLOW(-0.20)[quicinc.com:s=qcppdkim1];
	MIME_GOOD(-0.10)[text/plain];
	URIBL_BLOCKED(0.00)[quicinc.com:dkim,mx0a-0031df01.pphosted.com:rdns,mx0a-0031df01.pphosted.com:helo];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:26211, ipnet:205.220.168.0/24, country:US];
	RCPT_COUNT_SEVEN(0.00)[7];
	DKIM_TRACE(0.00)[quicinc.com:+];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,huawei.com,google.com,linaro.org];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_XOIP(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: AYPB33QPI4ACKHY6XN63U7WEX32B6CLE
X-Message-ID-Hash: AYPB33QPI4ACKHY6XN63U7WEX32B6CLE
X-MailFrom: quic_charante@quicinc.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: fix dma_buf_export init order
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AYPB33QPI4ACKHY6XN63U7WEX32B6CLE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIENocmlzdGlhbiBmb3IgdGhpcyBuaWNlIGNsZWFudXAhIQ0KDQpPbiAxMi82LzIwMjIg
ODo0MiBQTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gQEAgLTYzOCwxMCArNjMwLDIxIEBA
IHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmX2V4cG9ydChjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9leHBv
cnRfaW5mbyAqZXhwX2luZm8pDQo+ICAJaWYgKCF0cnlfbW9kdWxlX2dldChleHBfaW5mby0+b3du
ZXIpKQ0KPiAgCQlyZXR1cm4gRVJSX1BUUigtRU5PRU5UKTsNCj4gIA0KPiArCWZpbGUgPSBkbWFf
YnVmX2dldGZpbGUoZXhwX2luZm8tPnNpemUsIGV4cF9pbmZvLT5mbGFncyk7DQo+ICsJaWYgKElT
X0VSUihmaWxlKSkgew0KPiArCQlyZXQgPSBQVFJfRVJSKGZpbGUpOw0KPiArCQlnb3RvIGVycl9t
b2R1bGU7DQo+ICsJfQ0KPiArDQo+ICsJaWYgKCFleHBfaW5mby0+cmVzdikNCj4gKwkJYWxsb2Nf
c2l6ZSArPSBzaXplb2Yoc3RydWN0IGRtYV9yZXN2KTsNCj4gKwllbHNlDQo+ICsJCS8qIHByZXZl
bnQgJmRtYV9idWZbMV0gPT0gZG1hX2J1Zi0+cmVzdiAqLw0KPiArCQlhbGxvY19zaXplICs9IDE7
DQo+ICAJZG1hYnVmID0ga3phbGxvYyhhbGxvY19zaXplLCBHRlBfS0VSTkVMKTsNCj4gIAlpZiAo
IWRtYWJ1Zikgew0KPiAgCQlyZXQgPSAtRU5PTUVNOw0KPiAtCQlnb3RvIGVycl9tb2R1bGU7DQo+
ICsJCWdvdG8gZXJyX2ZpbGU7DQo+ICAJfQ0KPiAgDQo+ICAJZG1hYnVmLT5wcml2ID0gZXhwX2lu
Zm8tPnByaXY7DQo+IEBAIC02NTMsNDQgKzY1NiwzNiBAQCBzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1
Zl9leHBvcnQoY29uc3Qgc3RydWN0IGRtYV9idWZfZXhwb3J0X2luZm8gKmV4cF9pbmZvKQ0KPiAg
CWluaXRfd2FpdHF1ZXVlX2hlYWQoJmRtYWJ1Zi0+cG9sbCk7DQo+ICAJZG1hYnVmLT5jYl9pbi5w
b2xsID0gZG1hYnVmLT5jYl9vdXQucG9sbCA9ICZkbWFidWYtPnBvbGw7DQo+ICAJZG1hYnVmLT5j
Yl9pbi5hY3RpdmUgPSBkbWFidWYtPmNiX291dC5hY3RpdmUgPSAwOw0KPiArCW11dGV4X2luaXQo
JmRtYWJ1Zi0+bG9jayk7DQo+ICsJSU5JVF9MSVNUX0hFQUQoJmRtYWJ1Zi0+YXR0YWNobWVudHMp
Ow0KPiAgDQo+ICAJaWYgKCFyZXN2KSB7DQo+IC0JCXJlc3YgPSAoc3RydWN0IGRtYV9yZXN2ICop
JmRtYWJ1ZlsxXTsNCj4gLQkJZG1hX3Jlc3ZfaW5pdChyZXN2KTsNCj4gKwkJZG1hYnVmLT5yZXN2
ID0gKHN0cnVjdCBkbWFfcmVzdiAqKSZkbWFidWZbMV07DQo+ICsJCWRtYV9yZXN2X2luaXQoZG1h
YnVmLT5yZXN2KTsNCj4gKwl9IGVsc2Ugew0KPiArCQlkbWFidWYtPnJlc3YgPSByZXN2Ow0KPiAg
CX0NCj4gLQlkbWFidWYtPnJlc3YgPSByZXN2Ow0KPiAgDQo+IC0JZmlsZSA9IGRtYV9idWZfZ2V0
ZmlsZShkbWFidWYsIGV4cF9pbmZvLT5mbGFncyk7DQo+IC0JaWYgKElTX0VSUihmaWxlKSkgew0K
PiAtCQlyZXQgPSBQVFJfRVJSKGZpbGUpOw0KPiArCXJldCA9IGRtYV9idWZfc3RhdHNfc2V0dXAo
ZG1hYnVmLCBmaWxlKTsNCj4gKwlpZiAocmV0KQ0KPiAgCQlnb3RvIGVycl9kbWFidWY7DQo+IC0J
fQ0KPiAgDQo+ICsJZmlsZS0+cHJpdmF0ZV9kYXRhID0gZG1hYnVmOw0KPiArCWZpbGUtPmZfcGF0
aC5kZW50cnktPmRfZnNkYXRhID0gZG1hYnVmOw0KPiAgCWRtYWJ1Zi0+ZmlsZSA9IGZpbGU7DQo+
ICANCj4gLQltdXRleF9pbml0KCZkbWFidWYtPmxvY2spOw0KPiAtCUlOSVRfTElTVF9IRUFEKCZk
bWFidWYtPmF0dGFjaG1lbnRzKTsNCj4gLQ0KPiAgCW11dGV4X2xvY2soJmRiX2xpc3QubG9jayk7
DQo+ICAJbGlzdF9hZGQoJmRtYWJ1Zi0+bGlzdF9ub2RlLCAmZGJfbGlzdC5oZWFkKTsNCj4gIAlt
dXRleF91bmxvY2soJmRiX2xpc3QubG9jayk7DQo+ICANCj4gLQlyZXQgPSBkbWFfYnVmX3N0YXRz
X3NldHVwKGRtYWJ1Zik7DQo+IC0JaWYgKHJldCkNCj4gLQkJZ290byBlcnJfc3lzZnM7DQo+IC0N
Cj4gIAlyZXR1cm4gZG1hYnVmOw0KPiAgDQo+IC1lcnJfc3lzZnM6DQo+IC0JLyoNCj4gLQkgKiBT
ZXQgZmlsZS0+Zl9wYXRoLmRlbnRyeS0+ZF9mc2RhdGEgdG8gTlVMTCBzbyB0aGF0IHdoZW4NCj4g
LQkgKiBkbWFfYnVmX3JlbGVhc2UoKSBnZXRzIGludm9rZWQgYnkgZGVudHJ5X29wcywgaXQgZXhp
dHMNCj4gLQkgKiBlYXJseSBiZWZvcmUgY2FsbGluZyB0aGUgcmVsZWFzZSgpIGRtYV9idWYgb3Au
DQo+IC0JICovDQo+IC0JZmlsZS0+Zl9wYXRoLmRlbnRyeS0+ZF9mc2RhdGEgPSBOVUxMOw0KPiAt
CWZwdXQoZmlsZSk7DQo+ICBlcnJfZG1hYnVmOg0KPiArCWlmICghcmVzdikNCj4gKwkJZG1hX3Jl
c3ZfZmluaShkbWFidWYtPnJlc3YpOw0KPiAgCWtmcmVlKGRtYWJ1Zik7DQo+ICtlcnJfZmlsZToN
Cj4gKwlmcHV0KGZpbGUpOw0KDQpUaGlzIGZwdXQoKSBzdGlsbCBlbmR1cCBpbiBjYWxsaW5nIHRo
ZSBkbWFfYnVmX2ZpbGVfcmVsZWFzZSgpIHdoZXJlDQp0aGVyZSBhcmUgbm8gY2hlY2tzIGJlZm9y
ZSBhY2Nlc3NpbmcgdGhlIGZpbGUtPnByaXZhdGVfZGF0YSg9ZG1hYnVmKQ0Kd2hpY2ggY2FuIHJl
c3VsdCBpbiBudWxsIHBvaW50ZXIgYWNjZXNzLiBBbSBJIG1pc3Npbmcgc29tZXRoaW5nIHRyaXZp
YWw/DQoNCj4gIGVycl9tb2R1bGU6DQo+ICAJbW9kdWxlX3B1dChleHBfaW5mby0+b3duZXIpOw0K
PiAgCXJldHVybiBFUlJfUFRSKHJldCk7DQo+IC0tIDIuMzQuMQ0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
