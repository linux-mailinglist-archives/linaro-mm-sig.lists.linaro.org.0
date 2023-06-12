Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E5E72C963
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Jun 2023 17:10:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 87CDC3EBC0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Jun 2023 15:10:03 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id B0A783EBC0
	for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Jun 2023 15:09:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=quicinc.com header.s=qcppdkim1 header.b=NntYswhd;
	dmarc=pass (policy=none) header.from=quicinc.com;
	spf=pass (lists.linaro.org: domain of quic_jhugo@quicinc.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=quic_jhugo@quicinc.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 35CDrdde003212;
	Mon, 12 Jun 2023 15:09:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=We40rKMLG+MEC25B0HGY2atMNWzmRl6ol9yjTjBbbfY=;
 b=NntYswhdnF3o7j1hOEJqs6tPZKC/ueV3kPVbn26ZQ2xd7UZWsyMJxtdOUYjqNlQz/R5f
 boTx7AyP9HNQDQey/BscZcwWcv+hLMcH5DbIQBlQMnANGMWU3lYiVjI0y6eFaPUH2Lgu
 PmNF1LZlYDQx8tHa+vq86SWu6o0Pbm/gbSq9VFlc66JxPDvmUqV7lOTOQefisSsOTD99
 gNiTBozUOcRfviZ10rKtkcec45Hx7wjbRu3bHwTRM+AYUtqGFyenx5paFa1reIGHzw/p
 tCB3jKTosJSVWfDEZKjMLfJcRDdNl4LEX5eC2sbhYoL41R+mxKzzBRB7z1ro5AVJDEMc 6Q==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3r4ggr3pdy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 12 Jun 2023 15:09:41 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 35CF9ekQ003169
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 12 Jun 2023 15:09:40 GMT
Received: from [10.226.59.182] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.42; Mon, 12 Jun
 2023 08:09:40 -0700
Message-ID: <b5e5c141-b5df-e24d-8fa4-94297d561cec@quicinc.com>
Date: Mon, 12 Jun 2023 09:09:39 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
        "Pranjal
 Ramajor Asha Kanojiya" <quic_pkanojiy@quicinc.com>,
        Sukrut Bellary
	<sukrut.bellary@linux.com>,
        Oded Gabbay <ogabbay@kernel.org>,
        Sumit Semwal
	<sumit.semwal@linaro.org>
References: <20230610021200.377452-1-sukrut.bellary@linux.com>
 <fc979a4e-c30a-2606-9eec-afbba4fdd774@amd.com>
 <e3a867a8-284b-7250-b1b2-1956f533f6b0@quicinc.com>
 <ff196b04-e8c5-52d9-852b-9a9cc7eecdd0@amd.com>
From: Jeffrey Hugo <quic_jhugo@quicinc.com>
In-Reply-To: <ff196b04-e8c5-52d9-852b-9a9cc7eecdd0@amd.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 6P2l9VzzfQul7Cq_a4b7dSQKLSzsvKAl
X-Proofpoint-ORIG-GUID: 6P2l9VzzfQul7Cq_a4b7dSQKLSzsvKAl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-06-12_06,2023-06-09_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 impostorscore=0
 mlxscore=0 mlxlogscore=999 malwarescore=0 phishscore=0 clxscore=1011
 priorityscore=1501 spamscore=0 bulkscore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2305260000 definitions=main-2306120130
X-Rspamd-Queue-Id: B0A783EBC0
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[quicinc.com,none];
	R_DKIM_ALLOW(-0.20)[quicinc.com:s=qcppdkim1];
	R_SPF_ALLOW(-0.20)[+ip4:205.220.180.131];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mx0b-0031df01.pphosted.com:rdns,mx0b-0031df01.pphosted.com:helo,quicinc.com:dkim];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:22843, ipnet:205.220.180.0/24, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	DKIM_TRACE(0.00)[quicinc.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	HAS_XOIP(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 6WYT6Y7SICUGM5EWIAGQHT5WNAFKZWCA
X-Message-ID-Hash: 6WYT6Y7SICUGM5EWIAGQHT5WNAFKZWCA
X-MailFrom: quic_jhugo@quicinc.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-arm-msm@vger.kernel.org, kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] accel/qaic: Fix dereferencing freed memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6WYT6Y7SICUGM5EWIAGQHT5WNAFKZWCA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gNi8xMi8yMDIzIDc6MjEgQU0sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+IEFtIDEyLjA2
LjIzIHVtIDE1OjAzIHNjaHJpZWIgUHJhbmphbCBSYW1ham9yIEFzaGEgS2Fub2ppeWE6DQo+Pg0K
Pj4NCj4+IE9uIDYvMTIvMjAyMyA0OjUyIFBNLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4+
DQo+Pj4NCj4+PiBBbSAxMC4wNi4yMyB1bSAwNDoxMiBzY2hyaWViIFN1a3J1dCBCZWxsYXJ5Og0K
Pj4+PiBzbWF0Y2ggd2FybmluZzoNCj4+Pj4gwqDCoMKgwqBkcml2ZXJzL2FjY2VsL3FhaWMvcWFp
Y19kYXRhLmM6NjIwIHFhaWNfZnJlZV9vYmplY3QoKSBlcnJvcjoNCj4+Pj4gwqDCoMKgwqDCoMKg
wqAgZGVyZWZlcmVuY2luZyBmcmVlZCBtZW1vcnkgJ29iai0+aW1wb3J0X2F0dGFjaCcNCj4+Pj4N
Cj4+Pj4gb2JqLT5pbXBvcnRfYXR0YWNoIGlzIGRldGFjaGVkIGFuZCBmcmVlZCB1c2luZyBkbWFf
YnVmX2RldGFjaCgpLg0KPj4+PiBCdXQgdXNlZCBhZnRlciBmcmVlIHRvIGRlY3JlYXNlIHRoZSBk
bWFidWYgcmVmIGNvdW50IHVzaW5nDQo+Pj4+IGRtYV9idWZfcHV0KCkuDQo+Pj4+DQo+Pj4+IEZp
eGVzOiBmZjEzYmU4MzAzMzMgKCJhY2NlbC9xYWljOiBBZGQgZGF0YXBhdGgiKQ0KPj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBTdWtydXQgQmVsbGFyeSA8c3VrcnV0LmJlbGxhcnlAbGludXguY29tPg0KPj4+
PiAtLS0NCj4+Pj4gwqAgZHJpdmVycy9hY2NlbC9xYWljL3FhaWNfZGF0YS5jIHwgNCArKystDQo+
Pj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4+
Pj4NCj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvYWNjZWwvcWFpYy9xYWljX2RhdGEuYyANCj4+
Pj4gYi9kcml2ZXJzL2FjY2VsL3FhaWMvcWFpY19kYXRhLmMNCj4+Pj4gaW5kZXggZTQyYzFmOWZm
ZmY4Li43Y2JhNGQ2ODBlYTggMTAwNjQ0DQo+Pj4+IC0tLSBhL2RyaXZlcnMvYWNjZWwvcWFpYy9x
YWljX2RhdGEuYw0KPj4+PiArKysgYi9kcml2ZXJzL2FjY2VsL3FhaWMvcWFpY19kYXRhLmMNCj4+
Pj4gQEAgLTYxMywxMSArNjEzLDEzIEBAIHN0YXRpYyBpbnQgcWFpY19nZW1fb2JqZWN0X21tYXAo
c3RydWN0IA0KPj4+PiBkcm1fZ2VtX29iamVjdCAqb2JqLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Yw0K
Pj4+PiDCoCBzdGF0aWMgdm9pZCBxYWljX2ZyZWVfb2JqZWN0KHN0cnVjdCBkcm1fZ2VtX29iamVj
dCAqb2JqKQ0KPj4+PiDCoCB7DQo+Pj4+IMKgwqDCoMKgwqAgc3RydWN0IHFhaWNfYm8gKmJvID0g
dG9fcWFpY19ibyhvYmopOw0KPj4+PiArwqDCoMKgIHN0cnVjdCBkbWFfYnVmICpkbWFidWY7DQo+
Pj4NCj4+PiBNYXliZSBtb3ZlIHRoYXQgdmFyaWFibGUgaW50byB0aGUgaWYuDQo+Pj4NCj4+Pj4g
wqDCoMKgwqDCoCBpZiAob2JqLT5pbXBvcnRfYXR0YWNoKSB7DQo+Pj4+IMKgwqDCoMKgwqDCoMKg
wqDCoCAvKiBETUFCVUYvUFJJTUUgUGF0aCAqLw0KPj4+PiArwqDCoMKgwqDCoMKgwqAgZG1hYnVm
ID0gb2JqLT5pbXBvcnRfYXR0YWNoLT5kbWFidWY7DQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBk
bWFfYnVmX2RldGFjaChvYmotPmltcG9ydF9hdHRhY2gtPmRtYWJ1ZiwgDQo+Pj4+IG9iai0+aW1w
b3J0X2F0dGFjaCk7DQo+Pj4+IC3CoMKgwqDCoMKgwqDCoCBkbWFfYnVmX3B1dChvYmotPmltcG9y
dF9hdHRhY2gtPmRtYWJ1Zik7DQo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBkbWFfYnVmX3B1dChkbWFi
dWYpOw0KPj4+DQo+Pj4gSSBzdHJvbmdseSBhc3N1bWUgeW91IGFyZSBub3QgdXNpbmcgdGhlIEdF
TSBwcmltZSBoZWxwZXJzIGZvciB0aGlzPw0KPj4+DQo+Pj4gQ2hyaXN0aWFuLg0KPj4NCj4+IERy
aXZlciB1c2VzIGRybV9nZW1fcHJpbWVfZmRfdG9faGFuZGxlKCkgaGVscGVyIGZ1bmN0aW9uIGJ1
dCBpdCBhbHNvIA0KPj4gcmVnaXN0ZXJzIGZvciAtPmdlbV9wcmltZV9pbXBvcnQoKSB3aGljaCBp
cyBpbnRlcm5hbGx5IGNhbGxlZCBieSANCj4+IGRybV9nZW1fcHJpbWVfZmRfdG9faGFuZGxlKCku
IEFsbCB0aGUgb3BlcmF0aW9ucyBkb25lIGluIA0KPj4gZ2VtX3ByaW1lX2ltcG9ydCgpIGFyZSB1
bmRvbmUgaGVyZS4NCj4gDQo+IFRoZW4gd2h5IGRvbid0IHlvdSB1c2UgZHJtX3ByaW1lX2dlbV9k
ZXN0cm95KCkgd2hpY2ggaXMgdGhlIGNsZWFudXAgDQo+IGhlbHBlciBmb3IgaW1wb3J0cyBjcmVh
dGVkIGJ5IC0+Z2VtX3ByaW1lX2ltcG9ydCgpID8NCj4gDQo+IFRoYXQgbG9va3MgcHJldHR5IG11
Y2ggaWRlbnRpY2FsIHRvIHdoYXQgeW91IGRvIGhlcmUgbWFudWFsbHkuDQoNCkkgdGhpbmsgZGVz
dHJveSgpIHdhc24ndCB1c2VkIGJlY2F1c2Ugd2UgYXJlIG5ldyB0byBEUk0gYW5kIHNvbWV0aW1l
cyANCmNvbmZ1c2VkIGJ5IHRoZSBtdWx0aXR1ZGUgb2Ygb3B0aW9ucy4gIEkgYXBwcmVjaWF0ZSB0
aGUgc3VnZ2VzdGlvbiBhbmQgDQp3aWxsIGZvbGxvdyB1cCB0byBzZWUgaWYgZGVzdHJveSgpIHdp
bGwgd29yayBoZXJlLCBvciBpZGVudGlmeSB3aGF0IA0Kd291bGQgcHJldmVudCB0aGUgdXNlIG9m
IGl0Lg0KDQotSmVmZg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
