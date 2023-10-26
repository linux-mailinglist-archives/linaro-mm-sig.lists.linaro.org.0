Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F277D7BE8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Oct 2023 06:49:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A6C0A40202
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Oct 2023 04:49:40 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 40A2C3F4DE
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Oct 2023 04:49:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=quicinc.com header.s=qcppdkim1 header.b=les9P+Wu;
	dmarc=pass (policy=none) header.from=quicinc.com;
	spf=pass (lists.linaro.org: domain of quic_vjitta@quicinc.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=quic_vjitta@quicinc.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39Q3QZAE025980;
	Thu, 26 Oct 2023 04:48:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=hn7mI5XFOG6K7jwuqiR0Ffa6KjespaUDl8gFI+U8m5A=;
 b=les9P+WuPjyeIKUADLKxK3l/09OfKF3PEzo2QZxA0L2uAF9BQU4LeCIG6sYGbeJ06baJ
 71rJQytzxd+JqConSvP66cXNEspbXBYxPpcLmPxbKFwVTmA5GgYY1sU1Q/0TgezZTzay
 pQcpoMhXd2qN/KilxGLNwjqxRBPv/Se6/tKqxPFLW/nONAlfx+XhcA8uzjVjSTBi0m+y
 RmDwdaESTf0A2w5Eqok6w55Rq2bt3UWy7bTIuH3z99aWMVfDZlbgdcY3NusFLtTYLSr+
 +XLfRfDdK83n7765TGPT4EDXo66Iu2PLumiFJvBiFxyzhPvdA4z9hwb7QlYUh97+LjYI tw==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tyfm9g636-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 26 Oct 2023 04:48:57 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39Q4muAc014492
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 26 Oct 2023 04:48:56 GMT
Received: from [10.216.34.174] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Wed, 25 Oct
 2023 21:48:49 -0700
Message-ID: <ac44de13-f4e0-4bae-b06b-af90fadaa96c@quicinc.com>
Date: Thu, 26 Oct 2023 10:18:27 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <Yong.Wu@mediatek.com>,
        "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
        "christian.koenig@amd.com"
	<christian.koenig@amd.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
 <20230911023038.30649-5-yong.wu@mediatek.com>
 <5d806772-a2b4-4304-be45-7c2ed2930fcc@quicinc.com>
 <c8bf01a083182fdc83742de8daad8c5ce8d56d5b.camel@mediatek.com>
Content-Language: en-US
From: Vijayanand Jitta <quic_vjitta@quicinc.com>
In-Reply-To: <c8bf01a083182fdc83742de8daad8c5ce8d56d5b.camel@mediatek.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: pGxxlDuuSPDcqHECPGkRKbpmHIVzrNfa
X-Proofpoint-GUID: pGxxlDuuSPDcqHECPGkRKbpmHIVzrNfa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-26_01,2023-10-25_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 malwarescore=0 bulkscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 mlxlogscore=999 adultscore=0 suspectscore=0 mlxscore=0 spamscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310170001 definitions=main-2310260038
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 40A2C3F4DE
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.49 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[quicinc.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:205.220.180.131];
	R_DKIM_ALLOW(-0.20)[quicinc.com:s=qcppdkim1];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	TAGGED_RCPT(0.00)[dt];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:22843, ipnet:205.220.180.0/24, country:US];
	FREEMAIL_TO(0.00)[mediatek.com,gmail.com,amd.com,kernel.org,linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	HAS_XOIP(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[quicinc.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: 6B3FRI33YB672CAQ3DRBMXZFAYHTUB6T
X-Message-ID-Hash: 6B3FRI33YB672CAQ3DRBMXZFAYHTUB6T
X-MailFrom: quic_vjitta@quicinc.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "jstultz@google.com" <jstultz@google.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, =?UTF-8?B?SmlhbmppYW8gWmVuZyAo5pu+5YGl5aejKQ==?= <Jianjiao.Zeng@mediatek.com>, =?UTF-8?B?S3VvaG9uZyBXYW5nICjnjovlnIvptLsp?= <kuohong.wang@mediatek.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "tjmercier@google.com" <tjmercier@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "angelogioacchino.delregno@collabora.com" 
 <angelogioacchino.delregno@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/9] dma-buf: heaps: Initialise MediaTek secure heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6B3FRI33YB672CAQ3DRBMXZFAYHTUB6T/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCk9uIDEwLzIwLzIwMjMgMzoyOSBQTSwgWW9uZyBXdSAo5ZC05YuHKSB3cm90ZToNCj4gT24g
VGh1LCAyMDIzLTEwLTE5IGF0IDEwOjE1ICswNTMwLCBWaWpheWFuYW5kIEppdHRhIHdyb3RlOg0K
Pj4gIAkgDQo+PiBFeHRlcm5hbCBlbWFpbCA6IFBsZWFzZSBkbyBub3QgY2xpY2sgbGlua3Mgb3Ig
b3BlbiBhdHRhY2htZW50cyB1bnRpbA0KPj4geW91IGhhdmUgdmVyaWZpZWQgdGhlIHNlbmRlciBv
ciB0aGUgY29udGVudC4NCj4+ICANCj4+DQo+PiBPbiA5LzExLzIwMjMgODowMCBBTSwgWW9uZyBX
dSB3cm90ZToNCj4+PiBJbml0aWFsaXNlIGEgbXRrX3N2cCBoZWFwLiBDdXJyZW50bHkganVzdCBh
ZGQgYSBudWxsIGhlYXAsIFByZXBhcmUNCj4+IGZvcg0KPj4+IHRoZSBsYXRlciBwYXRjaGVzLg0K
Pj4+DQo+Pj4gU2lnbmVkLW9mZi1ieTogWW9uZyBXdSA8eW9uZy53dUBtZWRpYXRlay5jb20+DQo+
Pj4gLS0tDQo+Pj4gIGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9LY29uZmlnICAgICAgICAgICB8ICA4
ICsrDQo+Pj4gIGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9NYWtlZmlsZSAgICAgICAgICB8ICAxICsN
Cj4+PiAgZHJpdmVycy9kbWEtYnVmL2hlYXBzL210a19zZWN1cmVfaGVhcC5jIHwgOTkNCj4+ICsr
KysrKysrKysrKysrKysrKysrKysrKysNCj4+PiAgMyBmaWxlcyBjaGFuZ2VkLCAxMDggaW5zZXJ0
aW9ucygrKQ0KPj4+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9kbWEtYnVmL2hlYXBzL210
a19zZWN1cmVfaGVhcC5jDQo+Pj4NCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2hl
YXBzL0tjb25maWcgYi9kcml2ZXJzL2RtYS0NCj4+IGJ1Zi9oZWFwcy9LY29uZmlnDQo+Pj4gaW5k
ZXggYTVlZWYwNmM0MjI2Li43MjljMGNmM2ViN2MgMTAwNjQ0DQo+Pj4gLS0tIGEvZHJpdmVycy9k
bWEtYnVmL2hlYXBzL0tjb25maWcNCj4+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvS2Nv
bmZpZw0KPj4+IEBAIC0xMiwzICsxMiwxMSBAQCBjb25maWcgRE1BQlVGX0hFQVBTX0NNQQ0KPj4+
ICAgIENob29zZSB0aGlzIG9wdGlvbiB0byBlbmFibGUgZG1hLWJ1ZiBDTUEgaGVhcC4gVGhpcyBo
ZWFwIGlzDQo+PiBiYWNrZWQNCj4+PiAgICBieSB0aGUgQ29udGlndW91cyBNZW1vcnkgQWxsb2Nh
dG9yIChDTUEpLiBJZiB5b3VyIHN5c3RlbSBoYXMNCj4+IHRoZXNlDQo+Pj4gICAgcmVnaW9ucywg
eW91IHNob3VsZCBzYXkgWSBoZXJlLg0KPj4+ICsNCj4+PiArY29uZmlnIERNQUJVRl9IRUFQU19N
VEtfU0VDVVJFDQo+Pj4gK2Jvb2wgIkRNQS1CVUYgTWVkaWFUZWsgU2VjdXJlIEhlYXAiDQo+Pj4g
K2RlcGVuZHMgb24gRE1BQlVGX0hFQVBTICYmIFRFRQ0KPj4+ICtoZWxwDQo+Pj4gKyAgQ2hvb3Nl
IHRoaXMgb3B0aW9uIHRvIGVuYWJsZSBkbWEtYnVmIE1lZGlhVGVrIHNlY3VyZSBoZWFwIGZvcg0K
Pj4gU2VjdXJlDQo+Pj4gKyAgVmlkZW8gUGF0aC4gVGhpcyBoZWFwIGlzIGJhY2tlZCBieSBURUUg
Y2xpZW50IGludGVyZmFjZXMuIElmIGluDQo+Pj4gKyAgZG91YnQsIHNheSBOLg0KPj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvTWFrZWZpbGUgYi9kcml2ZXJzL2RtYS0NCj4+
IGJ1Zi9oZWFwcy9NYWtlZmlsZQ0KPj4+IGluZGV4IDk3NDQ2Nzc5MTAzMi4uZGY1NTlkYmUzM2Zl
IDEwMDY0NA0KPj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9NYWtlZmlsZQ0KPj4+ICsr
KyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9NYWtlZmlsZQ0KPj4+IEBAIC0xLDMgKzEsNCBAQA0K
Pj4+ICAjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wDQo+Pj4gIG9iai0kKENPTkZJ
R19ETUFCVUZfSEVBUFNfU1lTVEVNKSs9IHN5c3RlbV9oZWFwLm8NCj4+PiAgb2JqLSQoQ09ORklH
X0RNQUJVRl9IRUFQU19DTUEpKz0gY21hX2hlYXAubw0KPj4+ICtvYmotJChDT05GSUdfRE1BQlVG
X0hFQVBTX01US19TRUNVUkUpKz0gbXRrX3NlY3VyZV9oZWFwLm8NCj4+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9kbWEtYnVmL2hlYXBzL210a19zZWN1cmVfaGVhcC5jIGIvZHJpdmVycy9kbWEtDQo+
PiBidWYvaGVhcHMvbXRrX3NlY3VyZV9oZWFwLmMNCj4+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0K
Pj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uYmJmMWM4ZGNlMjNlDQo+Pj4gLS0tIC9kZXYvbnVsbA0K
Pj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9tdGtfc2VjdXJlX2hlYXAuYw0KPj4+IEBA
IC0wLDAgKzEsOTkgQEANCj4+PiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAN
Cj4+PiArLyoNCj4+PiArICogRE1BQlVGIG10a19zZWN1cmVfaGVhcCBleHBvcnRlcg0KPj4+ICsg
Kg0KPj4+ICsgKiBDb3B5cmlnaHQgKEMpIDIwMjMgTWVkaWFUZWsgSW5jLg0KPj4+ICsgKi8NCj4+
PiArDQo+Pj4gKyNpbmNsdWRlIDxsaW51eC9kbWEtYnVmLmg+DQo+Pj4gKyNpbmNsdWRlIDxsaW51
eC9kbWEtaGVhcC5oPg0KPj4+ICsjaW5jbHVkZSA8bGludXgvZXJyLmg+DQo+Pj4gKyNpbmNsdWRl
IDxsaW51eC9tb2R1bGUuaD4NCj4+PiArI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4NCj4+PiArDQo+
Pj4gKy8qDQo+Pj4gKyAqIE1lZGlhVGVrIHNlY3VyZSAoY2h1bmspIG1lbW9yeSB0eXBlDQo+Pj4g
KyAqDQo+Pj4gKyAqIEBLUkVFX01FTV9TRUNfQ01fVFo6IHN0YXRpYyBjaHVuayBtZW1vcnkgY2Fy
dmVkIG91dCBmb3INCj4+IHRydXN0em9uZS4NCj4+PiArICovDQo+Pj4gK2VudW0ga3JlZV9tZW1f
dHlwZSB7DQo+Pj4gK0tSRUVfTUVNX1NFQ19DTV9UWiA9IDEsDQo+Pj4gK307DQo+Pj4gKw0KPj4+
ICtzdHJ1Y3QgbXRrX3NlY3VyZV9oZWFwX2J1ZmZlciB7DQo+Pj4gK3N0cnVjdCBkbWFfaGVhcCpo
ZWFwOw0KPj4+ICtzaXplX3RzaXplOw0KPj4+ICt9Ow0KPj4+ICsNCj4+PiArc3RydWN0IG10a19z
ZWN1cmVfaGVhcCB7DQo+Pj4gK2NvbnN0IGNoYXIqbmFtZTsNCj4+PiArY29uc3QgZW51bSBrcmVl
X21lbV90eXBlIG1lbV90eXBlOw0KPj4+ICt9Ow0KPj4+ICsNCj4+PiArc3RhdGljIHN0cnVjdCBk
bWFfYnVmICoNCj4+PiArbXRrX3NlY19oZWFwX2FsbG9jYXRlKHN0cnVjdCBkbWFfaGVhcCAqaGVh
cCwgc2l6ZV90IHNpemUsDQo+Pj4gKyAgICAgIHVuc2lnbmVkIGxvbmcgZmRfZmxhZ3MsIHVuc2ln
bmVkIGxvbmcgaGVhcF9mbGFncykNCj4+PiArew0KPj4+ICtzdHJ1Y3QgbXRrX3NlY3VyZV9oZWFw
X2J1ZmZlciAqc2VjX2J1ZjsNCj4+PiArREVGSU5FX0RNQV9CVUZfRVhQT1JUX0lORk8oZXhwX2lu
Zm8pOw0KPj4+ICtzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmOw0KPj4+ICtpbnQgcmV0Ow0KPj4+ICsN
Cj4+PiArc2VjX2J1ZiA9IGt6YWxsb2Moc2l6ZW9mKCpzZWNfYnVmKSwgR0ZQX0tFUk5FTCk7DQo+
Pg0KPj4gQXMgd2Uga25vdywga3phbGxvYyBjYW4gb25seSBhbGxvY2F0ZSA0TUIgYXQgbWF4LiBT
bywgc2VjdXJlIGhlYXAgaGFzDQo+PiB0aGlzIGxpbWl0YXRpb24uDQo+PiBjYW4gd2UgaGF2ZSBh
IHdheSB0byBhbGxvY2F0ZSBtb3JlIG1lbW9yeSBpbiBzZWN1cmUgaGVhcCA/IG1heWJlDQo+PiBz
aW1pbGFyIHRvIGhvdyBzeXN0ZW0gaGVhcCBkb2VzPw0KPiANCj4gVGhpcyBpcyBqdXN0IHRoZSBz
aXplIG9mIGEgaW50ZXJuYWwgc3RydWN0dXJlLiBJIGd1ZXNzIHlvdSBtZWFuIHRoZQ0KPiBzZWN1
cmUgbWVtb3J5IHNpemUgaGVyZS4gUmVnYXJkaW5nIHNlY3VyZSBtZW1vcnkgYWxsb2NhdGluZyBm
bG93LCBvdXINCj4gZmxvdyBtYXkgYmUgZGlmZmVyZW50IHdpdGggeW91cnMuDQo+IA0KPiBMZXQg
bWUgZXhwbGFpbiBvdXIgZmxvdywgd2UgaGF2ZSB0d28gc2VjdXJlIGJ1ZmZlciB0eXBlcyhoZWFw
cykuDQo+IGEpIG10a19zdnANCj4gYikgbXRrX3N2cF9jbWEgd2hpY2ggcmVxdWlyZXMgdGhlIGNt
YSBiaW5kaW5nLg0KPiANCj4gVGhlIG1lbW9yeSBtYW5hZ2VtZW50IG9mIGJvdGggaXMgaW5zaWRl
IHRoZSBURUUuIFdlIG9ubHkgbmVlZCB0byB0ZWxsDQo+IHRoZSBURUUgd2hpY2ggdHlwZSBhbmQg
c2l6ZSBvZiBidWZmZXIgd2Ugd2FudCwgYW5kIHRoZW4gdGhlIFRFRSB3aWxsDQo+IHBlcmZvcm0g
YW5kIHJldHVybiB0aGUgbWVtb3J5IGhhbmRsZSB0byB0aGUga2VybmVsLiBUaGUNCj4ga3phbGxv
Yy9hbGxvY19wYWdlcyBpcyBmb3IgdGhlIG5vcm1hbCBidWZmZXJzLg0KPiANCj4gUmVnYXJkaW5n
IHRoZSBDTUEgYnVmZmVyLCB3ZSBvbmx5IGNhbGwgY21hX2FsbG9jIG9uY2UsIGFuZCBpdHMNCj4g
bWFuYWdlbWVudCBpcyBhbHNvIHdpdGhpbiB0aGUgVEVFLg0KPiANCg0KVGhhbmtzIGZvciB0aGUg
ZGV0YWlscy4NCg0KSSBzZWUgZm9yIG12cF9zdnAsIGFsbG9jYXRpb24gaXMgYWxzbyBzcGVjaWZp
YyB0byBURUUsIGFzIFRFRSB0YWtlcw0KY2FyZSBvZiBhbGxvY2F0aW9uIGFzIHdlbGwuIA0KDQpJ
IHdhcyB0aGlua2luZyBpZiBhbGxvY2F0aW9uIHBhdGggY2FuIGFsc28gYmUgbWFkZSBnZW5lcmlj
ID8gd2l0aG91dCBoYXZpbmcNCmRlcGVuZGVuY3kgb24gVEVFLg0KRm9yIGVnIDogQSBjYXNlIHdo
ZXJlIHdlIHdhbnQgdG8gYWxsb2NhdGUgZnJvbSBrZXJuZWwgYW5kIHNlY3VyZSB0aGF0IG1lbW9y
eSwNCnRoZSBjdXJyZW50IHNlY3VyZSBoZWFwIGRlc2lnbiBjYW4ndCBiZSB1c2VkLiANCg0KQWxz
byBpIHN1cHBvc2UgVEVFIGFsbG9jYXRlcyBjb250aWd1b3VzIG1lbW9yeSBmb3IgbXRrX3N2cCA/
IG9yIGRvZXMgaXQgc3VwcG9ydA0Kc2NhdHRlcmVkIG1lbW9yeSA/DQoNCj4+DQo+PiBUaGFua3Ms
DQo+PiBWaWpheQ0KPj4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
