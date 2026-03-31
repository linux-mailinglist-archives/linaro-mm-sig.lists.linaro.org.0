Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qLbKF7tj5mkuvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:34:51 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D2AAC431809
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:34:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8FF603F7D9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:34:49 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 375603F719
	for <linaro-mm-sig@lists.linaro.org>; Tue, 31 Mar 2026 09:30:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=quicinc.com header.s=qcppdkim1 header.b=Vir7KZxG;
	dmarc=pass (policy=none) header.from=quicinc.com;
	spf=pass (lists.linaro.org: domain of quic_msavaliy@quicinc.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=quic_msavaliy@quicinc.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62V3lvsP843933;
	Tue, 31 Mar 2026 09:30:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TmoIBAO5s8eHJUXNquiDQcv8swr1DwETqh/JT6rdfM4=; b=Vir7KZxGrIQa6l9n
	NmgLQ7kdq62yeahfVVLW3jEWxVGJEBkcL57A4AmfVBCV3+dxm6pZK389EnIA6Qrc
	/JlDEcdHDlvJbwxZnQQDtj1o5gR+17L2zqGWOakKqtm5TTlYl4bewuLuwU4i+TJt
	14Otmn8hc3GbpnASM2SIoWJBlTAwV1/m9tzl1SSUCUJxFJTjQaBuL9KohGawh9H1
	ImaaqYbR1rfjEmUDZBnOwZCJvdYy0OdZZXgqvjdGq2RJDc6kzvOfNXMMeRZ7gyh8
	ZlIlbWXJiynmTMTmzt9ruQsBKv9kShYy+AROcWIikdvZG0Gxi3ZwkLcIhLIbF6AK
	V5UErg==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d86nt9ax5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 31 Mar 2026 09:30:17 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA03.qualcomm.com (8.18.1.7/8.18.1.7) with ESMTPS id 62V9UGOm006250
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 31 Mar 2026 09:30:16 GMT
Received: from [10.217.219.207] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.17; Tue, 31 Mar
 2026 02:30:13 -0700
Message-ID: <74629a8f-b813-485f-ad5f-e4d4fe7335b9@quicinc.com>
Date: Tue, 31 Mar 2026 15:00:09 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Aniket RANDIVE <aniket.randive@oss.qualcomm.com>,
        Mukesh Kumar Savaliya
	<mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya
	<viken.dadhaniya@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>,
        "Sumit Semwal" <sumit.semwal@linaro.org>,
        =?UTF-8?Q?Christian_K=C3=B6nig?=
	<christian.koenig@amd.com>
References: <20260326-skip_extra_dma_tre-v1-1-deef018895dc@oss.qualcomm.com>
 <341f2f06-eae0-44b1-b513-61a4a129bae2@quicinc.com>
 <e850f14e-a938-41cb-80fe-fb92f647fc31@oss.qualcomm.com>
Content-Language: en-US
From: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
In-Reply-To: <e850f14e-a938-41cb-80fe-fb92f647fc31@oss.qualcomm.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-GUID: K5lw6drVi_QMYHJZDk15G6HHCo4SXdvK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzMxMDA5MCBTYWx0ZWRfXxtqmfuIzxQmk
 0lezQbq+E5VtMBPupfew48pgoGi0TY87alaqhPLa8jv7PkQgAFzlSHRO7ReZ3lPNQqcGjN63XAN
 bUBPhcoTAGfzRBTKXBKGfwjvnVC2tRefvLk/XzXPYqDYqIuMcvmSGb754DNGStjfzO/eDOhUO01
 4kha1wARqhsm0lL32U7pooRrlQmelr5+0uVUW+v8i/7yjr4wK0xc1RefvGZ40OwO8AGBSok3jDQ
 /Nm+/rSSBGYWiiWoAbDsG+MYbS34ula3ly4eL5a+RaEhQKd+1ohChdz439lwKXLfk7lI678oBtP
 ZxrkXbXYW1Fjoh5L7aoHr0CgNlU092J0hpMxF1o12XIhOumpxNb3Q9l0rJm48kW/1TfCxp9edQV
 X9WfIYqiL04Us/CXNKhP7c+9tOPE+5iGRDzi6LFh3mNwQGMtwMoT1AlV2L4nNzFBa6UQ8/8ewke
 ys84f1uYwfpstg9cFnw==
X-Authority-Analysis: v=2.4 cv=IswTsb/g c=1 sm=1 tr=0 ts=69cb9429 cx=c_pps
 a=JYp8KDb2vCoCEuGobkYCKw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=RwGkIONyzb2M8aXW5wsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: K5lw6drVi_QMYHJZDk15G6HHCo4SXdvK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-31_02,2026-03-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 adultscore=0 priorityscore=1501 clxscore=1015
 spamscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603310090
X-Spamd-Bar: ----
X-MailFrom: quic_msavaliy@quicinc.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GLLCRDTNQJKGFGWS37FTFIRTIZONCYEQ
X-Message-ID-Hash: GLLCRDTNQJKGFGWS37FTFIRTIZONCYEQ
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:33:35 +0000
CC: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Maramaina Naresh <naresh.maramaina@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1] i2c: qcom-geni: Skip extra TX DMA TRE for single read message in GPI mode
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GLLCRDTNQJKGFGWS37FTFIRTIZONCYEQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.69 / 15.00];
	DATE_IN_PAST(1.00)[488];
	R_DKIM_REJECT(1.00)[quicinc.com:s=qcppdkim1];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[quicinc.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[quic_msavaliy@quicinc.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[quicinc.com:-];
	HAS_XOIP(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.025];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,qualcomm.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,quicinc.com:mid]
X-Rspamd-Queue-Id: D2AAC431809
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCk9uIDMvMjcvMjAyNiAzOjM3IFBNLCBBbmlrZXQgUkFORElWRSB3cm90ZToNCj4gDQo+IA0K
PiBPbiAzLzI3LzIwMjYgMTE6NTEgQU0sIE11a2VzaCBLdW1hciBTYXZhbGl5YSB3cm90ZToNCj4+
DQo+Pg0KPj4gT24gMy8yNi8yMDI2IDEwOjAxIEFNLCBBbmlrZXQgUmFuZGl2ZSB3cm90ZToNCj4+
PiBJbiBHUEkgbW9kZSwgdGhlIEkyQyBHRU5JIGRyaXZlciBpbmNvcnJlY3RseSBnZW5lcmF0ZXMg
YW4gZXh0cmEgVFggRE1BDQo+Pj4gVFJFIG9uIHRoZSBUWCBjaGFubmVsIGR1cmluZyBzaW5nbGUg
cmVhZCBtZXNzYWdlIHRyYW5zZmVyLiBUaGlzIHJlc3VsdHMNCj4+IFdoYXQncyB0aGUgaW1wYWN0
IG9mIHRoaXMgZXh0cmEgRE1BIFRSRSA/IGRvIHlvdSBzZWUgZmFpbHVyZS90aW1lb3V0LCANCj4+
IGFueXRoaW5nID8NCj4gDQo+IFRoaXMgd3JpdGUgb3BlcmF0aW9uIGlzIHVubmVjZXNzYXJ5LiBG
b3IgYSAx4oCRYnl0ZSByZWFkIG9wZXJhdGlvbiwgb25seSANCj4gdGhlIENPTkZJRywgR08gYW5k
IFJYIERNQSBUUkUgYXJlIHJlcXVpcmVkLiBIb3dldmVyLCBhbiBhZGRpdGlvbmFsIFRYIA0KPiBE
TUEgVFJFIGlzIGN1cnJlbnRseSBiZWluZyBhZGRlZC4gSW4gYWRkaXRpb24gdG8gYmVpbmcgcmVk
dW5kYW50LCB0aGlzIA0KPiBhbHNvIHJlc3VsdHMgaW4gdW5uZWNlc3NhcnkgRE1BIGJ1ZmZlciBt
YXBwaW5nIGZvciB0aGUgVFggRE1BIFRSRS4NCj4gDQpPaywgbWFrZXMgc2Vuc2UuDQo+Pj4gaW4g
YW4gdW5uZWNlc3Nhcnkgd3JpdGUgb3BlcmF0aW9uIG9uIHRoZSBJMkMgYnVzLCB3aGljaCBpcyBu
b3QgcmVxdWlyZWQuDQo+Pj4NCj4+PiBVcGRhdGUgdGhlIGxvZ2ljIHRvIGF2b2lkIGdlbmVyYXRp
bmcgdGhlIGV4dHJhIFRYIERNQSBUUkUgZm9yIHNpbmdsZQ0KPj4+IHJlYWQgbWVzc2FnZSwgZW5z
dXJpbmcgY29ycmVjdCBiZWhhdmlvciBhbmQgcHJldmVudGluZyByZWR1bmRhbnQNCj4+PiB0cmFu
c2ZlcnMuDQo+Pj4NCj4+IFNvIGZvciByZWFkLCB3ZSBkbyB1bndhbnRlZCB3cml0ZSB0b28gPyBp
ZiBzbywgcGxlYXNlIHdyaXRlIGl0IA0KPj4gYWNjb3JkaW5nbHkuwqAgQ29ycmVjdCBiZWhhdmlv
ciBuZWVkcyB0byBiZSBqdXN0aWZpZWQgYWdhaW5zdCB3cm9uZy4NCj4gDQo+IFllcy4gQ3VycmVu
dGx5LCB0aGUgZHJpdmVyIHBlcmZvcm1zIGFuIHVubmVjZXNzYXJ5IHdyaXRlIGFzIHBhcnQgb2Yg
YSANCj4gcmVhZCB0cmFuc2FjdGlvbi4gRm9yIGEgc2luZ2xl4oCRYnl0ZSByZWFkIG9wZXJhdGlv
biwgdGhlIGNvcnJlY3QgYmVoYXZpb3IgDQo+IGlzIHRvIGlzc3VlIG9ubHkgdGhlIENPTkZJRywg
R08gY29tbWFuZCwgYW5kIGFuIFJYIERNQSBUUkUuIFRoaXMgVFggRE1BIA0KPiBUUkUgZG9lcyBu
b3QgY29udHJpYnV0ZSB0byB0aGUgcmVhZCBvcGVyYXRpb24gYW5kIHJlc3VsdHMgaW4gYW4gDQo+
IHVuaW50ZW5kZWQgd3JpdGUgYW5kIHJlZHVuZGFudCBETUEgYnVmZmVyIG1hcHBpbmcuIEhlbmNl
LCB0aGUgY3VycmVudCANCj4gYmVoYXZpb3IgaXMgaW5jb3JyZWN0IGFuZCBzaG91bGQgYmUgZml4
ZWQgdG8gYWxpZ24gd2l0aCB0aGUgcmVxdWlyZWQgDQo+IGhhcmR3YXJlIHRyYW5zYWN0aW9uIHNl
cXVlbmNlLg0KPiANCk1ha2VzIHNlbnNlLCBwbGVhc2UgYWRkIHN1Y2ggZGV0YWlscyBpbiB0aGUg
Y29tbWl0IGxvZyBvZiBuZXh0IHBhdGNoIHRvIA0KbWFrZSBpdCBjbGVhciBhZ2FpbnN0IHRoZSBw
cm9ibGVtIGFuZCBzb2x1dGlvbi4gUmVzdCBvZiB0aGUgY2hhbmdlcyANCmxvb2tzIGdvb2QuDQoN
Cj4+PiBDby1kZXZlbG9wZWQtYnk6IE1hcmFtYWluYSBOYXJlc2ggPG5hcmVzaC5tYXJhbWFpbmFA
b3NzLnF1YWxjb21tLmNvbT4NCj4+PiBTaWduZWQtb2ZmLWJ5OiBNYXJhbWFpbmEgTmFyZXNoIDxu
YXJlc2gubWFyYW1haW5hQG9zcy5xdWFsY29tbS5jb20+DQo+Pj4gU2lnbmVkLW9mZi1ieTogQW5p
a2V0IFJhbmRpdmUgPGFuaWtldC5yYW5kaXZlQG9zcy5xdWFsY29tbS5jb20+DQo+Pj4gLS0tDQo+
Pj4gwqAgZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1xY29tLWdlbmkuYyB8IDE4ICsrKysrKysrKysr
KystLS0tLQ0KPj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCA1IGRlbGV0
aW9ucygtKQ0KPj4+DQo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtcWNv
bS1nZW5pLmMgYi9kcml2ZXJzL2kyYy9idXNzZXMvIA0KPj4+IGkyYy1xY29tLWdlbmkuYw0KPj4+
IGluZGV4IGE0YWNiNzhmYWZiNi4uMjcwNjMwOWJiZWJiIDEwMDY0NA0KPj4+IC0tLSBhL2RyaXZl
cnMvaTJjL2J1c3Nlcy9pMmMtcWNvbS1nZW5pLmMNCj4+PiArKysgYi9kcml2ZXJzL2kyYy9idXNz
ZXMvaTJjLXFjb20tZ2VuaS5jDQo+Pj4gQEAgLTYyNSw4ICs2MjUsOCBAQCBzdGF0aWMgaW50IGdl
bmlfaTJjX2dwaShzdHJ1Y3QgZ2VuaV9pMmNfZGV2IA0KPj4+ICpnaTJjLCBzdHJ1Y3QgaTJjX21z
ZyBtc2dzW10sDQo+Pj4gwqAgew0KPj4+IMKgwqDCoMKgwqAgc3RydWN0IGdwaV9pMmNfY29uZmln
ICpwZXJpcGhlcmFsOw0KPj4+IMKgwqDCoMKgwqAgdW5zaWduZWQgaW50IGZsYWdzOw0KPj4+IC3C
oMKgwqAgdm9pZCAqZG1hX2J1ZjsNCj4+PiAtwqDCoMKgIGRtYV9hZGRyX3QgYWRkcjsNCj4+PiAr
wqDCoMKgIHZvaWQgKmRtYV9idWYgPSBOVUxMOw0KPj4+ICvCoMKgwqAgZG1hX2FkZHJfdCBhZGRy
ID0gMDsNCj4+PiDCoMKgwqDCoMKgIGVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIG1hcF9kaXJuOw0K
Pj4+IMKgwqDCoMKgwqAgZW51bSBkbWFfdHJhbnNmZXJfZGlyZWN0aW9uIGRtYV9kaXJuOw0KPj4+
IMKgwqDCoMKgwqAgc3RydWN0IGRtYV9hc3luY190eF9kZXNjcmlwdG9yICpkZXNjOw0KPj4+IEBA
IC02MzksNiArNjM5LDExIEBAIHN0YXRpYyBpbnQgZ2VuaV9pMmNfZ3BpKHN0cnVjdCBnZW5pX2ky
Y19kZXYgDQo+Pj4gKmdpMmMsIHN0cnVjdCBpMmNfbXNnIG1zZ3NbXSwNCj4+PiDCoMKgwqDCoMKg
IGdpMmNfZ3BpX3hmZXIgPSAmZ2kyYy0+aTJjX211bHRpX2Rlc2NfY29uZmlnOw0KPj4+IMKgwqDC
oMKgwqAgbXNnX2lkeCA9IGdpMmNfZ3BpX3hmZXItPm1zZ19pZHhfY250Ow0KPj4+ICvCoMKgwqAg
aWYgKG9wID09IEkyQ19XUklURSAmJiBtc2dzW21zZ19pZHhdLmZsYWdzICYgSTJDX01fUkQpIHsN
Cj4+PiArwqDCoMKgwqDCoMKgwqAgcGVyaXBoZXJhbC0+bXVsdGlfbXNnID0gdHJ1ZTsNCj4+IHdo
YXQncyB0aGUgYWN0dWFsIG1lYW5pbmcgb2YgbXVsdGlfbXNnIGhlcmUgPyBJSVVDLCB0aGlzIG11
bHRpX21zZyBpcyANCj4+IHNldCB0byB0cnVlIGZvciBzaW5nbGUgdHJhbnNmZXLCoCA/IGFueSBi
ZXR0ZXIgbmFtZSBpZiBzbyA/IFllcywgbmVlZCANCj4+IHRvIGNoYW5nZSBpdCBvdXQgb2YgdGhp
cyBwYXRjaC4NCj4gDQo+IEluIHRoZSBHUEkgZHJpdmVyLCBhIERNQSBUUkUgaXMgY3JlYXRlZCBv
bmx5IHdoZW4gZWl0aGVyIHRoZSBvcGVyYXRpb24gDQo+IGlzIGEgcmVhZCBvciB3aGVuIG11bHRp
X21zZyBpcyBzZXQgdG8gZmFsc2UuIFRoaXMgaXMgY29udHJvbGxlZCBieSB0aGUgDQo+IGZvbGxv
d2luZyBjaGVjayBkdXJpbmcgSTJDIFRSRSBjb25zdHJ1Y3Rpb24sDQo+IA0KPiAgwqDCoMKgwqBp
ZiAoaTJjLT5vcCA9PSBJMkNfUkVBRCB8fCBpMmMtPm11bHRpX21zZyA9PSBmYWxzZSkgew0KPiAg
wqDCoMKgwqDCoMKgwqAgLyogY3JlYXRlIHRoZSBETUEgVFJFICovDQo+ICDCoMKgwqDCoMKgwqDC
oCB0cmUgPSAmZGVzYy0+dHJlW3RyZV9pZHhdOw0KPiANCj4gUHJldmlvdXNseSwgd2hlbiBkbWFl
bmdpbmVfcHJlcF9zbGF2ZV9zaW5nbGUoKSB3YXMgaW52b2tlZCBmb3IgYSB3cml0ZSANCj4gb3Bl
cmF0aW9uLCB0aGlzIGNvbmRpdGlvbiBldmFsdWF0ZWQgdG8gdHJ1ZSBhbmQgYSBUWCBETUEgVFJF
IHdhcyBjcmVhdGVkIA0KPiBvbiB0aGUgVFggY2hhbm5lbC4gV2l0aCB0aGUgcmVjZW50IGNoYW5n
ZSwgdGhlIGZsYWcgaXMgZXhwbGljaXRseSBzZXQsIA0KPiB3aGljaCBjb3JyZWN0bHkgcHJldmVu
dHMgY3JlYXRpb24gb2YgYSBUWCBETUEgVFJFLiBJIGFncmVlIHRoZSB2YXJpYWJsZSANCj4gbmFt
ZSBjYW4gYmUgaW1wcm92ZWQgZm9yIGNsYXJpdHkgYW5kIHByb3Bvc2UgYWRkcmVzc2luZyB0aGF0
IGluIGEgDQo+IGZvbGxvd+KAkXVwIHBhdGNoIHRvIGtlZXAgdGhpcyBjaGFuZ2UgbWluaW1hbCBh
bmQgZm9jdXNlZC4NCj4gDQpSaWdodCwgdGhhdCB3YXMgbXkgaW50ZW50IHRvby4gSSB0aGluayB0
aGUgdmFyaWFibGUgbmFtZSBpcyBtaXNsZWFkaW5nLg0KDQo+Pj4gK8KgwqDCoMKgwqDCoMKgIGdv
dG8gc2tpcF9kbWE7DQo+Pj4gK8KgwqDCoCB9DQo+Pj4gKw0KPj4+IMKgwqDCoMKgwqAgZG1hX2J1
ZiA9IGkyY19nZXRfZG1hX3NhZmVfbXNnX2J1ZigmbXNnc1ttc2dfaWR4XSwgMSk7DQo+Pj4gwqDC
oMKgwqDCoCBpZiAoIWRtYV9idWYpIHsNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0ID0gLUVO
T01FTTsNCj4+PiBAQCAtNjY4LDYgKzY3Myw3IEBAIHN0YXRpYyBpbnQgZ2VuaV9pMmNfZ3BpKHN0
cnVjdCBnZW5pX2kyY19kZXYgDQo+Pj4gKmdpMmMsIHN0cnVjdCBpMmNfbXNnIG1zZ3NbXSwNCj4+
PiDCoMKgwqDCoMKgwqDCoMKgwqAgZmxhZ3MgPSBETUFfUFJFUF9JTlRFUlJVUFQgfCBETUFfQ1RS
TF9BQ0s7DQo+Pj4gwqDCoMKgwqDCoCB9DQo+Pj4gK3NraXBfZG1hOg0KPj4+IMKgwqDCoMKgwqAg
Lyogc2V0IHRoZSBsZW5ndGggYXMgbWVzc2FnZSBmb3IgcnggdHhuICovDQo+Pj4gwqDCoMKgwqDC
oCBwZXJpcGhlcmFsLT5yeF9sZW4gPSBtc2dzW21zZ19pZHhdLmxlbjsNCj4+PiDCoMKgwqDCoMKg
IHBlcmlwaGVyYWwtPm9wID0gb3A7DQo+Pj4gQEAgLTc0MCw5ICs3NDYsMTEgQEAgc3RhdGljIGlu
dCBnZW5pX2kyY19ncGkoc3RydWN0IGdlbmlfaTJjX2RldiANCj4+PiAqZ2kyYywgc3RydWN0IGky
Y19tc2cgbXNnc1tdLA0KPj4+IMKgwqDCoMKgwqAgcmV0dXJuIDA7DQo+Pj4gwqAgZXJyX2NvbmZp
ZzoNCj4+PiAtwqDCoMKgIGRtYV91bm1hcF9zaW5nbGUoZ2kyYy0+c2UuZGV2LT5wYXJlbnQsIGFk
ZHIsDQo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtc2dzW21zZ19pZHhdLmxlbiwgbWFw
X2Rpcm4pOw0KPj4+IC3CoMKgwqAgaTJjX3B1dF9kbWFfc2FmZV9tc2dfYnVmKGRtYV9idWYsICZt
c2dzW21zZ19pZHhdLCBmYWxzZSk7DQo+Pj4gK8KgwqDCoCBpZiAob3AgPT0gSTJDX1dSSVRFICYm
IChtc2dzW21zZ19pZHhdLmZsYWdzICYgSTJDX01fUkQpKSB7DQo+Pj4gK8KgwqDCoMKgwqDCoMKg
IGRtYV91bm1hcF9zaW5nbGUoZ2kyYy0+c2UuZGV2LT5wYXJlbnQsIGFkZHIsDQo+Pj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1zZ3NbbXNnX2lkeF0ubGVuLCBtYXBfZGlybik7
DQo+Pj4gK8KgwqDCoMKgwqDCoMKgIGkyY19wdXRfZG1hX3NhZmVfbXNnX2J1ZihkbWFfYnVmLCAm
bXNnc1ttc2dfaWR4XSwgZmFsc2UpOw0KPj4+ICvCoMKgwqAgfQ0KPj4+IMKgIG91dDoNCj4+PiDC
oMKgwqDCoMKgIGdpMmMtPmVyciA9IHJldDsNCj4+Pg0KPj4+IC0tLQ0KPj4+IGJhc2UtY29tbWl0
OiA3ODVmMGViMmY4NWRlY2JlN2MxZWY5YWU5MjI5MzFmMDE5NGZmYzJlDQo+Pj4gY2hhbmdlLWlk
OiAyMDI2MDMyNS1za2lwX2V4dHJhX2RtYV90cmUtYTNjZjIyZjgxZDliDQo+Pj4NCj4+PiBCZXN0
IHJlZ2FyZHMsDQo+Pj4gLS0gDQo+Pj4gQW5pa2V0IFJhbmRpdmUgPGFuaWtldC5yYW5kaXZlQG9z
cy5xdWFsY29tbS5jb20+DQo+Pj4NCj4+Pg0KPj4NCj4gDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
