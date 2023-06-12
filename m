Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C098572CC8A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Jun 2023 19:28:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D353A3F345
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Jun 2023 17:28:05 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 06A743EBC0
	for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Jun 2023 15:47:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=quicinc.com header.s=qcppdkim1 header.b=Bw1VU3Ny;
	dmarc=pass (policy=none) header.from=quicinc.com;
	spf=pass (lists.linaro.org: domain of quic_pkanojiy@quicinc.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=quic_pkanojiy@quicinc.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 35CE01lY011062;
	Mon, 12 Jun 2023 15:47:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=c87XOzdDuRMdz3dpGgxfIYZgND1DCuLkfZzv0++v1uQ=;
 b=Bw1VU3NyyUzzZXgDPJtYb1QzyRI5ndvSOaVuUfYZFjHJOMivGYq8BZ+XRqvL5KFa+hob
 lZ/R2XYH/gZzyBU8TG2jGZHGhqY0vAcbJMGpcCOscxSpRn5WHYs0QTfFR9jMXrvrvd5U
 Fzx+ZzOaz7idvR9IizWyRBvN0lCICSt6b5cZoZZyRRvHk9gOgdTBHBYIjxRNRVNGDODW
 EJkUU/siqw4FRtjNY6t8zUnzofNrwT2FuHFGs9ExJ+9NbYQe8v6EpGeL7GZg9m9YRSTT
 8l8jrhdw8x31STuJ3hV2Re0mJGfHX2veWxaFXi1+FjzZYMTcIpfxqMTOpIXs+3zOotAs eQ==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3r4ehtux5f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 12 Jun 2023 15:47:14 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 35CFlD68015398
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 12 Jun 2023 15:47:13 GMT
Received: from [10.50.14.38] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.42; Mon, 12 Jun
 2023 08:47:09 -0700
Message-ID: <d4476c3b-9923-dde2-8338-9f67ebfc729f@quicinc.com>
Date: Mon, 12 Jun 2023 21:17:07 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Jeffrey Hugo <quic_jhugo@quicinc.com>,
        =?UTF-8?Q?Christian_K=c3=b6nig?=
	<christian.koenig@amd.com>,
        Sukrut Bellary <sukrut.bellary@linux.com>,
        "Oded
 Gabbay" <ogabbay@kernel.org>,
        Sumit Semwal <sumit.semwal@linaro.org>
References: <20230610021200.377452-1-sukrut.bellary@linux.com>
 <fc979a4e-c30a-2606-9eec-afbba4fdd774@amd.com>
 <e3a867a8-284b-7250-b1b2-1956f533f6b0@quicinc.com>
 <ff196b04-e8c5-52d9-852b-9a9cc7eecdd0@amd.com>
 <b5e5c141-b5df-e24d-8fa4-94297d561cec@quicinc.com>
From: Pranjal Ramajor Asha Kanojiya <quic_pkanojiy@quicinc.com>
In-Reply-To: <b5e5c141-b5df-e24d-8fa4-94297d561cec@quicinc.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: H6edwVznO1IQawd9XFNZmgfKwTUAO_qQ
X-Proofpoint-ORIG-GUID: H6edwVznO1IQawd9XFNZmgfKwTUAO_qQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-06-12_06,2023-06-09_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 priorityscore=1501 mlxscore=0 bulkscore=0 impostorscore=0
 lowpriorityscore=0 malwarescore=0 spamscore=0 mlxlogscore=999 adultscore=0
 suspectscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2305260000 definitions=main-2306120136
X-Rspamd-Queue-Id: 06A743EBC0
X-Spamd-Bar: -----------
X-Spamd-Result: default: False [-11.50 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[quicinc.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[quicinc.com,none];
	R_DKIM_ALLOW(-0.20)[quicinc.com:s=qcppdkim1];
	R_SPF_ALLOW(-0.20)[+ip4:205.220.180.131];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:22843, ipnet:205.220.180.0/24, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	HAS_XOIP(0.00)[];
	DKIM_TRACE(0.00)[quicinc.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	URIBL_BLOCKED(0.00)[mx0b-0031df01.pphosted.com:rdns,mx0b-0031df01.pphosted.com:helo,quicinc.com:dkim];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: quic_pkanojiy@quicinc.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: KKNTO5HHGQ6K2HHBBXHCHLXVSV36OK4E
X-Message-ID-Hash: KKNTO5HHGQ6K2HHBBXHCHLXVSV36OK4E
X-Mailman-Approved-At: Mon, 12 Jun 2023 17:26:51 +0000
CC: linux-arm-msm@vger.kernel.org, kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] accel/qaic: Fix dereferencing freed memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KKNTO5HHGQ6K2HHBBXHCHLXVSV36OK4E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQoNCk9uIDYvMTIvMjAyMyA4OjM5IFBNLCBKZWZmcmV5IEh1Z28gd3JvdGU6DQo+IE9uIDYvMTIv
MjAyMyA3OjIxIEFNLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4gQW0gMTIuMDYuMjMgdW0g
MTU6MDMgc2NocmllYiBQcmFuamFsIFJhbWFqb3IgQXNoYSBLYW5vaml5YToNCj4+Pg0KPj4+DQo+
Pj4gT24gNi8xMi8yMDIzIDQ6NTIgUE0sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+Pj4+DQo+
Pj4+DQo+Pj4+IEFtIDEwLjA2LjIzIHVtIDA0OjEyIHNjaHJpZWIgU3VrcnV0IEJlbGxhcnk6DQo+
Pj4+PiBzbWF0Y2ggd2FybmluZzoNCj4+Pj4+IMKgwqDCoMKgZHJpdmVycy9hY2NlbC9xYWljL3Fh
aWNfZGF0YS5jOjYyMCBxYWljX2ZyZWVfb2JqZWN0KCkgZXJyb3I6DQo+Pj4+PiDCoMKgwqDCoMKg
wqDCoCBkZXJlZmVyZW5jaW5nIGZyZWVkIG1lbW9yeSAnb2JqLT5pbXBvcnRfYXR0YWNoJw0KPj4+
Pj4NCj4+Pj4+IG9iai0+aW1wb3J0X2F0dGFjaCBpcyBkZXRhY2hlZCBhbmQgZnJlZWQgdXNpbmcg
ZG1hX2J1Zl9kZXRhY2goKS4NCj4+Pj4+IEJ1dCB1c2VkIGFmdGVyIGZyZWUgdG8gZGVjcmVhc2Ug
dGhlIGRtYWJ1ZiByZWYgY291bnQgdXNpbmcNCj4+Pj4+IGRtYV9idWZfcHV0KCkuDQo+Pj4+Pg0K
Pj4+Pj4gRml4ZXM6IGZmMTNiZTgzMDMzMyAoImFjY2VsL3FhaWM6IEFkZCBkYXRhcGF0aCIpDQo+
Pj4+PiBTaWduZWQtb2ZmLWJ5OiBTdWtydXQgQmVsbGFyeSA8c3VrcnV0LmJlbGxhcnlAbGludXgu
Y29tPg0KPj4+Pj4gLS0tDQo+Pj4+PiDCoCBkcml2ZXJzL2FjY2VsL3FhaWMvcWFpY19kYXRhLmMg
fCA0ICsrKy0NCj4+Pj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVs
ZXRpb24oLSkNCj4+Pj4+DQo+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9hY2NlbC9xYWljL3Fh
aWNfZGF0YS5jIA0KPj4+Pj4gYi9kcml2ZXJzL2FjY2VsL3FhaWMvcWFpY19kYXRhLmMNCj4+Pj4+
IGluZGV4IGU0MmMxZjlmZmZmOC4uN2NiYTRkNjgwZWE4IDEwMDY0NA0KPj4+Pj4gLS0tIGEvZHJp
dmVycy9hY2NlbC9xYWljL3FhaWNfZGF0YS5jDQo+Pj4+PiArKysgYi9kcml2ZXJzL2FjY2VsL3Fh
aWMvcWFpY19kYXRhLmMNCj4+Pj4+IEBAIC02MTMsMTEgKzYxMywxMyBAQCBzdGF0aWMgaW50IHFh
aWNfZ2VtX29iamVjdF9tbWFwKHN0cnVjdCANCj4+Pj4+IGRybV9nZW1fb2JqZWN0ICpvYmosIHN0
cnVjdCB2bV9hcmVhX3N0cnVjDQo+Pj4+PiDCoCBzdGF0aWMgdm9pZCBxYWljX2ZyZWVfb2JqZWN0
KHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKQ0KPj4+Pj4gwqAgew0KPj4+Pj4gwqDCoMKgwqDC
oCBzdHJ1Y3QgcWFpY19ibyAqYm8gPSB0b19xYWljX2JvKG9iaik7DQo+Pj4+PiArwqDCoMKgIHN0
cnVjdCBkbWFfYnVmICpkbWFidWY7DQo+Pj4+DQo+Pj4+IE1heWJlIG1vdmUgdGhhdCB2YXJpYWJs
ZSBpbnRvIHRoZSBpZi4NCj4+Pj4NCj4+Pj4+IMKgwqDCoMKgwqAgaWYgKG9iai0+aW1wb3J0X2F0
dGFjaCkgew0KPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIC8qIERNQUJVRi9QUklNRSBQYXRoICov
DQo+Pj4+PiArwqDCoMKgwqDCoMKgwqAgZG1hYnVmID0gb2JqLT5pbXBvcnRfYXR0YWNoLT5kbWFi
dWY7DQo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZG1hX2J1Zl9kZXRhY2gob2JqLT5pbXBvcnRf
YXR0YWNoLT5kbWFidWYsIA0KPj4+Pj4gb2JqLT5pbXBvcnRfYXR0YWNoKTsNCj4+Pj4+IC3CoMKg
wqDCoMKgwqDCoCBkbWFfYnVmX3B1dChvYmotPmltcG9ydF9hdHRhY2gtPmRtYWJ1Zik7DQo+Pj4+
PiArwqDCoMKgwqDCoMKgwqAgZG1hX2J1Zl9wdXQoZG1hYnVmKTsNCj4+Pj4NCj4+Pj4gSSBzdHJv
bmdseSBhc3N1bWUgeW91IGFyZSBub3QgdXNpbmcgdGhlIEdFTSBwcmltZSBoZWxwZXJzIGZvciB0
aGlzPw0KPj4+Pg0KPj4+PiBDaHJpc3RpYW4uDQo+Pj4NCj4+PiBEcml2ZXIgdXNlcyBkcm1fZ2Vt
X3ByaW1lX2ZkX3RvX2hhbmRsZSgpIGhlbHBlciBmdW5jdGlvbiBidXQgaXQgYWxzbyANCj4+PiBy
ZWdpc3RlcnMgZm9yIC0+Z2VtX3ByaW1lX2ltcG9ydCgpIHdoaWNoIGlzIGludGVybmFsbHkgY2Fs
bGVkIGJ5IA0KPj4+IGRybV9nZW1fcHJpbWVfZmRfdG9faGFuZGxlKCkuIEFsbCB0aGUgb3BlcmF0
aW9ucyBkb25lIGluIA0KPj4+IGdlbV9wcmltZV9pbXBvcnQoKSBhcmUgdW5kb25lIGhlcmUuDQo+
Pg0KPj4gVGhlbiB3aHkgZG9uJ3QgeW91IHVzZSBkcm1fcHJpbWVfZ2VtX2Rlc3Ryb3koKSB3aGlj
aCBpcyB0aGUgY2xlYW51cCANCj4+IGhlbHBlciBmb3IgaW1wb3J0cyBjcmVhdGVkIGJ5IC0+Z2Vt
X3ByaW1lX2ltcG9ydCgpID8NCj4+DQo+PiBUaGF0IGxvb2tzIHByZXR0eSBtdWNoIGlkZW50aWNh
bCB0byB3aGF0IHlvdSBkbyBoZXJlIG1hbnVhbGx5Lg0KPiANCj4gSSB0aGluayBkZXN0cm95KCkg
d2Fzbid0IHVzZWQgYmVjYXVzZSB3ZSBhcmUgbmV3IHRvIERSTSBhbmQgc29tZXRpbWVzIA0KPiBj
b25mdXNlZCBieSB0aGUgbXVsdGl0dWRlIG9mIG9wdGlvbnMuwqAgSSBhcHByZWNpYXRlIHRoZSBz
dWdnZXN0aW9uIGFuZCANCj4gd2lsbCBmb2xsb3cgdXAgdG8gc2VlIGlmIGRlc3Ryb3koKSB3aWxs
IHdvcmsgaGVyZSwgb3IgaWRlbnRpZnkgd2hhdCANCj4gd291bGQgcHJldmVudCB0aGUgdXNlIG9m
IGl0Lg0KPiANCj4gLUplZmYNCg0KVGhhbmsgeW91IENocmlzdGlhbiBmb3IgeW91ciBzdWdnZXN0
aW9uLiBJIGFncmVlIHdpdGggeW91IGRyaXZlciBjYW4gdXNlIA0KICBkcm1fcHJpbWVfZ2VtX2Rl
c3Ryb3koKSBoZXJlLg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
