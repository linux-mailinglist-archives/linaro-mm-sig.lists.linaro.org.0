Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A780F72CC85
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Jun 2023 19:27:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BAE46449EE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Jun 2023 17:27:46 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 637683E952
	for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Jun 2023 13:03:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=quicinc.com header.s=qcppdkim1 header.b=G6ua1Gn9;
	dmarc=pass (policy=none) header.from=quicinc.com;
	spf=pass (lists.linaro.org: domain of quic_pkanojiy@quicinc.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=quic_pkanojiy@quicinc.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 35CCUVEL030059;
	Mon, 12 Jun 2023 13:03:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=vwUQ1F8I7JI/UaeWgCAqXrFbc20JHeM5AvHArrbGZns=;
 b=G6ua1Gn9MbO7FPY+XSeGpjItS1FFYvAY0JwZYk1Uiz/KAgD+xkH4m7U8pwqrdL37oyex
 7TZdggKYfXNzWeA2MDyCWykL95+zxUR89pNu4OGnk4jVnVK+nH9rjJUmj55OTHOcphJT
 dOPFqY/Pp8hRXz4zgbOqQA+oAHP4bjcttkDOmNrE+CAkfUCPh4AOsXe9E65w2LopWTTf
 YqQzadC33GUZF6tsXq37njVCMe6Hyj+hBeY5EmDlt29zKG27sdlJQyUZp/tlnTYuzxgd
 T+gQCi9Y69hRp7ndog5L4cG+9oKWIWmV6HgTHHHNlMgyS3PWvivDVnLdbP5NDyKh0Wd9 xQ==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3r4hd8bcah-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 12 Jun 2023 13:03:11 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 35CD3ArR004276
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 12 Jun 2023 13:03:10 GMT
Received: from [10.50.37.200] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.42; Mon, 12 Jun
 2023 06:03:07 -0700
Message-ID: <e3a867a8-284b-7250-b1b2-1956f533f6b0@quicinc.com>
Date: Mon, 12 Jun 2023 18:33:04 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
        "Sukrut
 Bellary" <sukrut.bellary@linux.com>,
        Jeffrey Hugo <quic_jhugo@quicinc.com>,
        Oded Gabbay <ogabbay@kernel.org>,
        Sumit Semwal <sumit.semwal@linaro.org>
References: <20230610021200.377452-1-sukrut.bellary@linux.com>
 <fc979a4e-c30a-2606-9eec-afbba4fdd774@amd.com>
From: Pranjal Ramajor Asha Kanojiya <quic_pkanojiy@quicinc.com>
In-Reply-To: <fc979a4e-c30a-2606-9eec-afbba4fdd774@amd.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: SeHIjpfi9M7u3H3WwjT4NY5sa6NN1EoZ
X-Proofpoint-GUID: SeHIjpfi9M7u3H3WwjT4NY5sa6NN1EoZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-06-12_06,2023-06-09_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 impostorscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501
 phishscore=0 adultscore=0 bulkscore=0 mlxscore=0 spamscore=0
 suspectscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2305260000 definitions=main-2306120112
X-Rspamd-Queue-Id: 637683E952
X-Spamd-Bar: -------------
X-Spamd-Result: default: False [-13.00 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[quicinc.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[quicinc.com,none];
	RCVD_IN_DNSWL_HI(-0.50)[205.220.168.131:from];
	R_SPF_ALLOW(-0.20)[+ip4:205.220.168.131];
	R_DKIM_ALLOW(-0.20)[quicinc.com:s=qcppdkim1];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:26211, ipnet:205.220.168.0/24, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	BLOCKLISTDE_FAIL(0.00)[129.46.96.20:server fail];
	DKIM_TRACE(0.00)[quicinc.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	HAS_XOIP(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	URIBL_BLOCKED(0.00)[quicinc.com:dkim];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: quic_pkanojiy@quicinc.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NT4FKQYEHDVOIJ6YVO3TZ65OEMSFHTMJ
X-Message-ID-Hash: NT4FKQYEHDVOIJ6YVO3TZ65OEMSFHTMJ
X-Mailman-Approved-At: Mon, 12 Jun 2023 17:26:51 +0000
CC: linux-arm-msm@vger.kernel.org, kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] accel/qaic: Fix dereferencing freed memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NT4FKQYEHDVOIJ6YVO3TZ65OEMSFHTMJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQoNCk9uIDYvMTIvMjAyMyA0OjUyIFBNLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiANCj4g
DQo+IEFtIDEwLjA2LjIzIHVtIDA0OjEyIHNjaHJpZWIgU3VrcnV0IEJlbGxhcnk6DQo+PiBzbWF0
Y2ggd2FybmluZzoNCj4+IMKgwqDCoMKgZHJpdmVycy9hY2NlbC9xYWljL3FhaWNfZGF0YS5jOjYy
MCBxYWljX2ZyZWVfb2JqZWN0KCkgZXJyb3I6DQo+PiDCoMKgwqDCoMKgwqDCoCBkZXJlZmVyZW5j
aW5nIGZyZWVkIG1lbW9yeSAnb2JqLT5pbXBvcnRfYXR0YWNoJw0KPj4NCj4+IG9iai0+aW1wb3J0
X2F0dGFjaCBpcyBkZXRhY2hlZCBhbmQgZnJlZWQgdXNpbmcgZG1hX2J1Zl9kZXRhY2goKS4NCj4+
IEJ1dCB1c2VkIGFmdGVyIGZyZWUgdG8gZGVjcmVhc2UgdGhlIGRtYWJ1ZiByZWYgY291bnQgdXNp
bmcNCj4+IGRtYV9idWZfcHV0KCkuDQo+Pg0KPj4gRml4ZXM6IGZmMTNiZTgzMDMzMyAoImFjY2Vs
L3FhaWM6IEFkZCBkYXRhcGF0aCIpDQo+PiBTaWduZWQtb2ZmLWJ5OiBTdWtydXQgQmVsbGFyeSA8
c3VrcnV0LmJlbGxhcnlAbGludXguY29tPg0KPj4gLS0tDQo+PiDCoCBkcml2ZXJzL2FjY2VsL3Fh
aWMvcWFpY19kYXRhLmMgfCA0ICsrKy0NCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9hY2NlbC9x
YWljL3FhaWNfZGF0YS5jIA0KPj4gYi9kcml2ZXJzL2FjY2VsL3FhaWMvcWFpY19kYXRhLmMNCj4+
IGluZGV4IGU0MmMxZjlmZmZmOC4uN2NiYTRkNjgwZWE4IDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVy
cy9hY2NlbC9xYWljL3FhaWNfZGF0YS5jDQo+PiArKysgYi9kcml2ZXJzL2FjY2VsL3FhaWMvcWFp
Y19kYXRhLmMNCj4+IEBAIC02MTMsMTEgKzYxMywxMyBAQCBzdGF0aWMgaW50IHFhaWNfZ2VtX29i
amVjdF9tbWFwKHN0cnVjdCANCj4+IGRybV9nZW1fb2JqZWN0ICpvYmosIHN0cnVjdCB2bV9hcmVh
X3N0cnVjDQo+PiDCoCBzdGF0aWMgdm9pZCBxYWljX2ZyZWVfb2JqZWN0KHN0cnVjdCBkcm1fZ2Vt
X29iamVjdCAqb2JqKQ0KPj4gwqAgew0KPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgcWFpY19ibyAqYm8g
PSB0b19xYWljX2JvKG9iaik7DQo+PiArwqDCoMKgIHN0cnVjdCBkbWFfYnVmICpkbWFidWY7DQo+
IA0KPiBNYXliZSBtb3ZlIHRoYXQgdmFyaWFibGUgaW50byB0aGUgaWYuDQo+IA0KPj4gwqDCoMKg
wqDCoCBpZiAob2JqLT5pbXBvcnRfYXR0YWNoKSB7DQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgLyog
RE1BQlVGL1BSSU1FIFBhdGggKi8NCj4+ICvCoMKgwqDCoMKgwqDCoCBkbWFidWYgPSBvYmotPmlt
cG9ydF9hdHRhY2gtPmRtYWJ1ZjsNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBkbWFfYnVmX2RldGFj
aChvYmotPmltcG9ydF9hdHRhY2gtPmRtYWJ1Ziwgb2JqLT5pbXBvcnRfYXR0YWNoKTsNCj4+IC3C
oMKgwqDCoMKgwqDCoCBkbWFfYnVmX3B1dChvYmotPmltcG9ydF9hdHRhY2gtPmRtYWJ1Zik7DQo+
PiArwqDCoMKgwqDCoMKgwqAgZG1hX2J1Zl9wdXQoZG1hYnVmKTsNCj4gDQo+IEkgc3Ryb25nbHkg
YXNzdW1lIHlvdSBhcmUgbm90IHVzaW5nIHRoZSBHRU0gcHJpbWUgaGVscGVycyBmb3IgdGhpcz8N
Cj4gDQo+IENocmlzdGlhbi4NCg0KRHJpdmVyIHVzZXMgZHJtX2dlbV9wcmltZV9mZF90b19oYW5k
bGUoKSBoZWxwZXIgZnVuY3Rpb24gYnV0IGl0IGFsc28gDQpyZWdpc3RlcnMgZm9yIC0+Z2VtX3By
aW1lX2ltcG9ydCgpIHdoaWNoIGlzIGludGVybmFsbHkgY2FsbGVkIGJ5IA0KZHJtX2dlbV9wcmlt
ZV9mZF90b19oYW5kbGUoKS4gQWxsIHRoZSBvcGVyYXRpb25zIGRvbmUgaW4gDQpnZW1fcHJpbWVf
aW1wb3J0KCkgYXJlIHVuZG9uZSBoZXJlLg0KDQo+IA0KPj4gwqDCoMKgwqDCoCB9IGVsc2Ugew0K
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIC8qIFByaXZhdGUgYnVmZmVyIGFsbG9jYXRpb24gcGF0aCAq
Lw0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHFhaWNfZnJlZV9zZ3QoYm8tPnNndCk7DQo+IA0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==
