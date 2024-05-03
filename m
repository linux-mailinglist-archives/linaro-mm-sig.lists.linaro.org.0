Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D328BADDF
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 15:40:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8062644359
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 13:40:41 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 2D0803F39D
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 May 2024 13:40:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=quicinc.com header.s=qcppdkim1 header.b="Ok OB9Rf";
	spf=pass (lists.linaro.org: domain of quic_charante@quicinc.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=quic_charante@quicinc.com;
	dmarc=pass (policy=none) header.from=quicinc.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 443CLH05026098;
	Fri, 3 May 2024 13:40:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=OTB8nHFLPaquXF5F/bBkNoQstl6p52xaF/pLsiIiK+E=; b=Ok
	OB9RfSaE7dFEwpgN2ng24tTsRGHoRUdPZRLivDNQc4Kt5kpR4600xo8WiRIWzXjJ
	sZabYLm8mWq8xYidXK8lDUJcMMH1FsPlkh0TngbWtId51nBXMhlkVPvZIU8nbLY3
	Gi0thrgzD648jWAhKJW7Ke+pEi8oRF3wO9aer31NVSl9HctOKpORMHlLAPRA2gjV
	UB9tX1NMJxom6EfLvAzi/5wBE8XEVyknmVz4UjXit1TTr0pfZfmGV5hT7jtZ7DXH
	wvL9+Cqaue8c8sDGaMFH4KFDrL7FebKh4G2nslCXk6TphxdCR2J4/M+FO1dRWt8x
	Anesn5ZMPjLpX9Xrh4ug==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3xv7pxk1jy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 03 May 2024 13:40:25 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 443DeOCE027742
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 3 May 2024 13:40:24 GMT
Received: from [10.214.66.164] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Fri, 3 May 2024
 06:40:21 -0700
Message-ID: <289b9ad6-58a3-aa39-48ae-a244fe108354@quicinc.com>
Date: Fri, 3 May 2024 19:10:18 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
        zhiguojiang
	<justinjiang@vivo.com>,
        "T.J. Mercier" <tjmercier@google.com>
References: <20240327022903.776-1-justinjiang@vivo.com>
 <5cf29162-a29d-4af7-b68e-aac5c862d20e@amd.com>
 <cc7defae-60c1-4cc8-aee5-475d4460e574@vivo.com>
 <23375ba8-9558-4886-9c65-af9fe8e8e8b6@amd.com>
 <CABdmKX2Kf4ZmVzv3LGTz2GyP-9+rAtFY9hSAxdkrwK8mG0gDvQ@mail.gmail.com>
 <e55cad9b-a361-4d27-a351-f6a4f5b8b734@vivo.com>
 <40ac02bb-efe2-4f52-a4f2-7b56d9b93d2c@amd.com>
 <4fedd80c-d5b6-4478-bfd3-02d1ee1a26e5@vivo.com>
 <aab5ec51-fcff-44f2-a4f5-2979bd776a03@amd.com>
 <2ebca2fd-9465-4e64-b3cc-ffb88ef87800@vivo.com>
 <d4209754-5f26-422d-aca0-45cccbc44ad0@amd.com>
Content-Language: en-US
From: Charan Teja Kalla <quic_charante@quicinc.com>
In-Reply-To: <d4209754-5f26-422d-aca0-45cccbc44ad0@amd.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: Rg_pKWba3Akm2TNgCyjNcGyIoHI3gh5C
X-Proofpoint-ORIG-GUID: Rg_pKWba3Akm2TNgCyjNcGyIoHI3gh5C
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-03_09,2024-05-03_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 adultscore=0
 suspectscore=0 mlxlogscore=999 phishscore=0 lowpriorityscore=0 mlxscore=0
 bulkscore=0 spamscore=0 malwarescore=0 impostorscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2404010003
 definitions=main-2405030098
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2D0803F39D
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[quicinc.com,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[quicinc.com:s=qcppdkim1];
	R_SPF_ALLOW(-0.20)[+ip4:205.220.168.131];
	RCVD_IN_DNSWL_MED(-0.20)[129.46.96.20:received];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:26211, ipnet:205.220.168.0/24, country:US];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	HAS_XOIP(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[quicinc.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: S6RSB35ML7EZHZGSWQMBMYEKQQNVSLQZ
X-Message-ID-Hash: S6RSB35ML7EZHZGSWQMBMYEKQQNVSLQZ
X-MailFrom: quic_charante@quicinc.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, opensource.kernel@vivo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dmabuf: fix dmabuf file poll uaf issue
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S6RSB35ML7EZHZGSWQMBMYEKQQNVSLQZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIENocmlzdGlhbi9USiBmb3IgdGhlIGlucHV0cyEhDQoNCk9uIDQvMTgvMjAyNCAxMjox
NiBQTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gQXMgZmFyIGFzIEkgY2FuIHNlZSB0aGUg
RVBPTEwgaG9sZHMgYSByZWZlcmVuY2UgdG8gdGhlIGZpbGVzIGl0DQo+IGNvbnRhaW5zLiBTbyBp
dCBpcyBwZXJmZWN0bHkgdmFsaWQgdG8gYWRkIHRoZSBmaWxlIGRlc2NyaXB0b3IgdG8gRVBPTEwN
Cj4gYW5kIHRoZW4gY2xvc2UgaXQuDQo+DQo+IEluIHRoaXMgY2FzZSB0aGUgZmlsZSB3b24ndCBi
ZSBjbG9zZWQsIGJ1dCBiZSBrZXB0IGFsaXZlIGJ5IGl0J3MNCj4gcmVmZXJlbmNlIGluIHRoZSBF
UE9MTCBmaWxlIGRlc2NyaXB0b3IuDQoNCkkgYW0gbm90IHNlZWluZyB0aGF0IGFkZGluZyBhICdm
ZCcgaW50byB0aGUgZXBvbGwgbW9uaXRvcmluZyBsaXN0IHdpbGwNCmluY3JlYXNlIGl0cyByZWZj
b3VudC4gIENvbmZpcm1lZCBieSB3cml0aW5nIGEgdGVzdGNhc2UgdGhhdCBqdXN0IGRvDQpvcGVu
ICsgRVBPTExfQ1RMX0FERCBhbmQgc2VlIHRoZSAvcHJvYy8uLi9mZGluZm8gb2YgZXBvbGwgZmQo
QWRkZWQNCmZpbGVfY291bnQoKSBpbmZvIHRvIHRoZSBvdXRwdXQpDQojIGNhdCAvcHJvYy8xMzYv
ZmRpbmZvLzMNCnBvczogICAgMA0KZmxhZ3M6ICAwMg0KbW50X2lkOiAxNA0KaW5vOiAgICAxMDQx
DQp0ZmQ6ICAgICAgICA0IGV2ZW50czogICAgICAgMTkgZGF0YTogICAgICAgICAgICAgICAgNCAg
cG9zOjAgaW5vOjgxIHNkZXY6NQ0KcmVmY291bnQ6IDE8LS0gVGhlIGZkIGFkZGVkIHRvIHRoZSBl
cG9sbCBtb25pdG9yaW5nIGlzIHN0aWxsIDEoc2FtZSBhcw0Kb3BlbiBmaWxlIHJlZmNvdW50KQ0K
DQo+RnJvbSB0aGUgY29kZSB0b28sIEkgZG9uJ3Qgc2VlIGEgZmlsZSBhZGRlZCBpbiB0aGUgZXBv
bGwgbW9uaXRvcmluZyBsaXN0DQp3aWxsIGhhdmUgYW4gZXh0cmEgcmVmY291bnQgYnV0IG1vbWVu
dGFyaWx5ICh3aGVyZSBpdCBpbmNyZWFzZXMgdGhlDQpyZWZjb3VudCBvZiB0YXJnZXQgZmlsZSwg
YWRkIGl0IHRvIHRoZSByYnRyZWUgb2YgdGhlIGVwb2xsIGNvbnRleHQgYW5kDQp0aGVuIGRlY3Jl
YXNpbmcgdGhlIGZpbGUgcmVmY291bnQpOg0KZG9fZXBvbGxfY3RsKCk6DQoJZiA9IGZkZ2V0KGVw
ZmQpOw0KCXRmID0gZmRnZXQoZmQpOw0KCWVwb2xsX211dGV4X2xvY2soJmVwLT5tdHgpDQoJRVBP
TExfQ1RMX0FERDoNCgkJZXBfaW5zZXJ0KGVwLCBlcGRzLCB0Zi5maWxlLCBmZCwgZnVsbF9jaGVj
ayk7IC8vIEFkZGVkIHRvIHRoZSBlcG9sbA0KbW9uaXRvcmluZyByYiB0cmVlIGxpc3QgYXMgZXBp
dGVtLg0KCW11dGV4X3VubG9jaygmZXAtPm10eCk7DQoJZmRwdXQodGYpOw0KCWZkcHV0KGYpOw0K
DQoNCk5vdCBzdXJlIElmIGkgYW0gY29tcGxldGVseSBtaXN0YWtlbiB3aGF0IHlvdSdyZSBzYXlp
bmcgaGVyZS4NCg0KPiBUaGUgZnMgbGF5ZXIgd2hpY2ggY2FsbHMgZG1hX2J1Zl9wb2xsKCkgc2hv
dWxkIG1ha2Ugc3VyZSB0aGF0IHRoZSBmaWxlDQo+IGNhbid0IGdvIGF3YXkgdW50aWwgdGhlIGZ1
bmN0aW9uIHJldHVybnMuDQo+IA0KPiBUaGVuIGluc2lkZSBkbWFfYnVmX3BvbGwoKSB3ZSBhZGQg
YW5vdGhlciByZWZlcmVuY2UgdG8gdGhlIGZpbGUgd2hpbGUNCj4gaW5zdGFsbGluZyB0aGUgY2Fs
bGJhY2s6DQo+IA0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIC8qIFBhaXJlZCB3aXRoIGZwdXQgaW4gZG1hX2J1Zl9wb2xsX2NiICovDQo+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ2V0X2ZpbGUoZG1hYnVmLT5m
aWxlKTsgTm8sIGV4YWN0bHkgdGhhdCBjYW4ndA0KPiBoYXBwZW4gZWl0aGVyLg0KPiANCg0KSSBh
bSBub3QgcXVpdGUgY29tZm9ydGFibGUgd2l0aCBlcG9sbCBpbnRlcm5hbHMgYnV0IEkgdGhpbmsg
YmVsb3cgcmFjZQ0KaXMgcG9zc2libGUgd2hlcmUgIlRoZSAnZmlsZScgcGFzc2VkIHRvIGRtYV9i
dWZfcG9sbCgpIGlzIHByb3BlciBidXQNCi0+Zl9jb3VudCA9PSAwLCB3aGljaCBpcyBpbmRpY2F0
aW5nIHRoYXQgYSBwYXJhbGxlbCBmcmVlaW5nIGlzDQpoYXBwZW5pbmciLiBTbywgd2Ugc2hvdWxk
IGNoZWNrIHRoZSBmaWxlLT5mX2NvdW50IHZhbHVlIGJlZm9yZSB0YWtpbmcNCnRoZSByZWZjb3Vu
dC4NCg0KKEEgJ2ZkJyByZWdpc3RlcmVkIGZvciB0aGUgZXBvbGwgbW9uaXRvcmluZyBsaXN0IGlz
IG1haW50YWluZWQgYXMNCidlcGl0ZW0oZXBpKScgaW4gdGhlIHJidHJlZSBvZiAnZXZlbnRwb2xs
KGVwLCBjYWxsZWQgYXMgZXBvbGwgY29udGV4dCkuDQoNCmVwb2xsX3dhaXQoKQkJCQkgICAgX19m
cHV0KCkoYXMgZmlsZS0+Zl9jb3VudD0wKQ0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQphKSBlcF9wb2xsX2Nh
bGxiYWNrKCk6DQogICAgIElzIHRoZSB3YWl0cXVldWUgZnVuY3Rpb24NCiAgIGNhbGxlZCB3aGVu
IHNpZ25hbGVkIG9uIHRoZQ0KICAgd2FpdF9xdWV1ZV9oZWFkX3Qgb2YgdGhlIHJlZ2lzdGVyZWQN
CiAgIHBvbGwoKSBmdW5jdGlvbi4NCg0KICAgMSkgSXQgbGlua3MgdGhlICdlcGknIHRvIHRoZSBy
ZWFkeSBsaXN0DQogICAgICBvZiAnZXAnOg0KICAgICAgIGlmICghZXBfaXNfbGlua2VkKGVwaSkp
DQoJIGxpc3RfYWRkX3RhaWxfbG9ja2xlc3MoJmVwaS0+cmRsbGluaywNCgkJJmVwLT5yZGxsaXN0
KQ0KDQogICAyKSB3YWtlX3VwKCZlcC0+d3EpOw0KCVdha2UgdXAgdGhlIHByb2Nlc3Mgd2FpdGlu
Zw0KCW9uIGVwb2xsX3dhaXQoKSB0aGF0IGVuZHVwDQoJaW4gZXBfcG9sbC4NCg0KDQpiKSBlcF9w
b2xsKCk6DQogICAgMSkgd2hpbGUgKDEpIHsNCgllYXZhaWwgPSBlcF9ldmVudHNfYXZhaWxhYmxl
KGVwKTsNCgkoY2hlY2tzIGVwLT5yZGxpc3QpDQoJZXBfc2VuZF9ldmVudHMoZXApOw0KCShub3Rp
ZnkgdGhlIGV2ZW50cyB0byB1c2VyKQ0KICAgIH0NCiAgICAoZXBvbGxfd2FpdCgpIGNhbGxpbmcg
cHJvY2VzcyBnZXRzDQogICAgIHdva2VuIHVwIGZyb20gYS4yIGFuZCBwcm9jZXNzIHRoZQ0KICAg
ICBldmVudHMgcmFpc2VkIGFkZGVkIHRvIHJkbGlzdCBpbiBhLjEpDQoNCiAgIDIpIGVwX3NlbmRf
ZXZlbnRzKCk6DQoJbXV0ZXhfbG9jaygmZXAtPm10eCk7DQoJKCoqIFRoZSBzeW5jIGxvY2sgaXMg
dGFrZW4gKiopDQoJbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKGVwaSwgdG1wLA0KCQkJJnR4bGlz
dCwgcmRsbGluaykgew0KCSAgICBsaXN0X2RlbF9pbml0KCZlcGktPnJkbGxpbmspOw0KCSAgICBy
ZXZlbnRzID0gZXBfaXRlbV9wb2xsKGVwaSwgJnB0LCAxKQ0KCSAgICAodmZzX3BvbGwoKS0tPi4u
LmZfb3AtPnBvbGwoPWRtYV9idWZfcG9sbCkNCgl9DQoJbXV0ZXhfdW5sb2NrKCZlcC0+bXR4KQ0K
CSgqKnJlbGVhc2UgdGhlIGxvY2suKiopDQoNCgkoQXMgcGFydCBvZiBwcm9jZXNzaW9uIG9mIGV2
ZW50cywNCgkgZWFjaCBlcGl0ZW0gaXMgcmVtb3ZlZCBmcm9tIHJkbGlzdA0KICAgICAgICAgYW5k
IGNhbGwgdGhlIGZfb3AtPnBvbGwoKSBvZiBhIGZpbGUNCgkgd2hpY2ggd2lsbCBlbmR1cCBpbiBk
bWFfYnVmX3BvbGwoKSkNCg0KICAgMykgZG1hX2J1Zl9wb2xsKCk6DQogCWdldF9maWxlKGRtYWJ1
Zi0+ZmlsZSk7DQoJKCoqIGZfY291bnQgY2hhbmdlZCBmcm9tIDAtPjEgKiopDQoJZG1hX2J1Zl9w
b2xsX2FkZF9jYihyZXN2LCB0cnVlLCBkY2IpOg0KCShyZWdpc3RlcnMgZG1hX2J1Zl9wb2xsX2Ni
KCkgYWdhaW5zdCBmZW5jZSkNCg0KDQoJCQkJYykgZXZlbnRwb2xsX3JlbGVhc2VfZmlsZSgpOg0K
CQkJCSAgIG11dGV4X2xvY2soJmVwLT5tdHgpOw0KCQkJCSAgIF9fZXBfcmVtb3ZlKGVwLCBlcGks
IHRydWUpOg0KCQkJCSAgIG11dGV4X3VubG9jaygmZXAtPm10eCk7DQoJCQkJICAoX19lcF9yZW1v
dmUoKSB3aWxsIHJlbW92ZSB0aGUNCgkJCQkgICAnZXBpJyBmcm9tIHJidHJlZSBhbmQgaWYgcHJl
c2VudA0KCQkJCSAgIGZyb20gcmRsaXN0IGFzIHdlbGwpDQoNCgkJCQlkKSBmaWxlX2ZyZWUoZmls
ZSksIGZyZWUgdGhlICdmaWxlJy4NCg0KZSkgZG1hX2J1Zl9wb2xsX2NiOg0KIC8qIFBhaXJlZCB3
aXRoIGdldF9maWxlIGluIGRtYV9idWZfcG9sbCAqLw0KIGZwdXQoZG1hYnVmLT5maWxlKTsNCiAo
Zl9jb3VudCBjaGFuZ2VkIGZyb20gMS0+MCwgd2hlcmUNCiAgd2UgdHJ5IHRvIGZyZWUgdGhlICdm
aWxlJyBhZ2Fpbg0KICB3aGljaCBpcyBVQUYvZG91YmxlIGZyZWUpLg0KDQoNCgkJDQpJbiB0aGUg
YWJvdmUgcmFjZSwgSWYgYykgZ2V0cyBjYWxsZWQgZmlyc3QsIHRoZW4gdGhlICdlcGknIGlzIHJl
bW92ZWQNCmZyb20gYm90aCByYnRyZWUgYW5kICdyZGxpbmsnIHVuZGVyIGVwLT5tdHggbG9jayB0
aHVzIGIuMiBkb24ndCBlbmQgdXANCmluIGNhbGxpbmcgdGhlIC0+cG9sbCgpIGFzIGl0IGRvbid0
IHNlZSB0aGlzIGV2ZW50IGluIHRoZSByZGxpc3QuDQoNClJhY2Ugb25seSBleGlzdCBJZiBiLjIg
ZXhlY3V0ZXMgZmlyc3QsIHdoZXJlIGl0IHdpbGwgY2FsbCBkbWFfYnVmX3BvbGwNCndpdGggX192
YWxpZCAnc3RydWN0IGZpbGUnIHVuZGVyIGVwLT5tdHggYnV0IGl0cyByZWZjb3VudCBpcyBhbHJl
YWR5DQpjb3VsZCBoYXZlIGJlZW4gemVyb19fLiBMYXRlciBXaGVuIGUpIGlzIGV4ZWN1dGVkLCBp
dCB0dXJucyBpbnRvIGRvdWJsZQ0KZnJlZSBvZiB0aGUgJ2ZpbGUnIHN0cnVjdHVyZS4NCg0KSWYg
eW91J3JlIGNvbnZpbmNlZCB3aXRoIHRoZSBhYm92ZSByYWNlLCBzaG91bGQgdGhlIGZpeCBoZXJl
IHdpbGwgYmUNCnRoaXMgc2ltcGxlIGNoZWNrOg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQppbmRleCA4ZmU1YWE2N2Ix
NjcuLmU0NjlkZDkyODhjYw0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KKysrIGIv
ZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KQEAgLTI0MCw2ICsyNDAsMTAgQEAgc3RhdGljIF9f
cG9sbF90IGRtYV9idWZfcG9sbChzdHJ1Y3QgZmlsZSAqZmlsZSwNCnBvbGxfdGFibGUgKnBvbGwp
DQogCXN0cnVjdCBkbWFfcmVzdiAqcmVzdjsNCiAJX19wb2xsX3QgZXZlbnRzOw0KDQorCS8qIENo
ZWNrIHBhcmFsbGVsIGZyZWVpbmcgb2YgZmlsZSAqLw0KKwlpZiAoIWZpbGVfY291bnQoZmlsZSkp
DQorCQlyZXR1cm4gMDsNCisNCg0KVGhhbmtzLA0KQ2hhcmFuDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
