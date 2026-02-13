Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WD/oAsAR4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:43:44 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 90042411E1D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:43:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A5DBE44F97
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:43:42 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id 7FF7A3F773
	for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Feb 2026 14:32:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=IQTnMH5A;
	spf=pass (lists.linaro.org: domain of boris.brezillon@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1770993178;
	bh=qnSypbY6LZaolUO/OilxrUesEiJrM70AYzxCLD5qJ38=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=IQTnMH5A62deCf6qBjRFoPha2mbGA0164GvrfRhAbAP+tigsvWYcmyQ0L90FMAhPp
	 s4qWmoKcNbvPDYu6bzH3kwFCOLsppssK62M8FQ48LEeQ/5d3iot/vYFXSDHcq+nVS5
	 AUfaLWqOq6IzvKT0nwKvy8mIsD7CtfHYETkWJxrdKnuXbLYO+pLOVly5L1D2BBGs+p
	 yENp1Bc7FvlfapqGlpbXOKROpwGPhfz0Gl2Qebc405/zcVOikebbazBvoBa7xU3N9e
	 Zqsy7BRxBR8CL50Juuw8E8FX0t3+eesPkdCY6POw77lb+HeiYIlgKDNtOuQEQdMLvN
	 4E/JwurJR1XeA==
Received: from fedora (unknown [IPv6:2a01:e0a:2c:6930:d919:a6e:5ea1:8a9f])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D53D717E00AC;
	Fri, 13 Feb 2026 15:32:57 +0100 (CET)
Date: Fri, 13 Feb 2026 15:32:53 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: "Christian =?UTF-8?B?S8O2bmln?=" <ckoenig.leichtzumerken@gmail.com>
Message-ID: <20260213153253.29016148@fedora>
In-Reply-To: <20260210102232.1642-7-christian.koenig@amd.com>
References: <20260210102232.1642-1-christian.koenig@amd.com>
	<20260210102232.1642-7-christian.koenig@amd.com>
Organization: Collabora
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EQLQ2I5B2M6G4B7W3VLDDHXK3PLIHZSN
X-Message-ID-Hash: EQLQ2I5B2M6G4B7W3VLDDHXK3PLIHZSN
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:36:23 +0000
CC: phasta@mailbox.org, matthew.brost@intel.com, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 6/8] dma-buf: use inline lock for the stub fence v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EQLQ2I5B2M6G4B7W3VLDDHXK3PLIHZSN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[collabora.com:s=mail];
	DATE_IN_PAST(1.00)[1490];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.821];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[igalia.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,collabora.com:email,amd.com:email]
X-Rspamd-Queue-Id: 90042411E1D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCAxMCBGZWIgMjAyNiAxMTowMjowMSArMDEwMA0KIkNocmlzdGlhbiBLw7ZuaWciIDxj
a29lbmlnLmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6DQoNCj4gVXNpbmcgdGhlIGlu
bGluZSBsb2NrIGlzIG5vdyB0aGUgcmVjb21tZW5kZWQgd2F5IGZvciBkbWFfZmVuY2UNCj4gaW1w
bGVtZW50YXRpb25zLg0KPiANCj4gU28gdXNlIHRoaXMgYXBwcm9hY2ggZm9yIHRoZSBmcmFtZXdv
cmsncyBpbnRlcm5hbCBmZW5jZXMgYXMgd2VsbC4NCj4gDQo+IEFsc28gc2F2ZXMgYWJvdXQgNCBi
eXRlcyBmb3IgdGhlIGV4dGVybmFsIHNwaW5sb2NrLg0KPiANCj4gdjI6IGRyb3AgdW5uZWNlc3Nh
cnkgY2hhbmdlcw0KPiANCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiBSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRr
by51cnN1bGluQGlnYWxpYS5jb20+DQo+IFJldmlld2VkLWJ5OiBQaGlsaXBwIFN0YW5uZXIgPHBo
YXN0YUBrZXJuZWwub3JnPg0KDQpSZXZpZXdlZC1ieTogQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5i
cmV6aWxsb25AY29sbGFib3JhLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEt
ZmVuY2UuYyB8IDEyICsrLS0tLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKSwgMTAgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVm
L2RtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+IGluZGV4IDE4MzM4
ODllNzQ2Ni4uNTQxZTIwYWE0ZTZjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1h
LWZlbmNlLmMNCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+IEBAIC0yNCw3
ICsyNCw2IEBAIEVYUE9SVF9UUkFDRVBPSU5UX1NZTUJPTChkbWFfZmVuY2VfZW1pdCk7DQo+ICBF
WFBPUlRfVFJBQ0VQT0lOVF9TWU1CT0woZG1hX2ZlbmNlX2VuYWJsZV9zaWduYWwpOw0KPiAgRVhQ
T1JUX1RSQUNFUE9JTlRfU1lNQk9MKGRtYV9mZW5jZV9zaWduYWxlZCk7DQo+ICANCj4gLXN0YXRp
YyBERUZJTkVfU1BJTkxPQ0soZG1hX2ZlbmNlX3N0dWJfbG9jayk7DQo+ICBzdGF0aWMgc3RydWN0
IGRtYV9mZW5jZSBkbWFfZmVuY2Vfc3R1YjsNCj4gIA0KPiAgLyoNCj4gQEAgLTEyMywxMiArMTIy
LDkgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIGRtYV9mZW5jZV9zdHViX29w
cyA9IHsNCj4gIA0KPiAgc3RhdGljIGludCBfX2luaXQgZG1hX2ZlbmNlX2luaXRfc3R1Yih2b2lk
KQ0KPiAgew0KPiAtCWRtYV9mZW5jZV9pbml0KCZkbWFfZmVuY2Vfc3R1YiwgJmRtYV9mZW5jZV9z
dHViX29wcywNCj4gLQkJICAgICAgICZkbWFfZmVuY2Vfc3R1Yl9sb2NrLCAwLCAwKTsNCj4gLQ0K
PiArCWRtYV9mZW5jZV9pbml0KCZkbWFfZmVuY2Vfc3R1YiwgJmRtYV9mZW5jZV9zdHViX29wcywg
TlVMTCwgMCwgMCk7DQo+ICAJc2V0X2JpdChETUFfRkVOQ0VfRkxBR19FTkFCTEVfU0lHTkFMX0JJ
VCwNCj4gIAkJJmRtYV9mZW5jZV9zdHViLmZsYWdzKTsNCj4gLQ0KPiAgCWRtYV9mZW5jZV9zaWdu
YWwoJmRtYV9mZW5jZV9zdHViKTsNCj4gIAlyZXR1cm4gMDsNCj4gIH0NCj4gQEAgLTE2MCwxMSAr
MTU2LDcgQEAgc3RydWN0IGRtYV9mZW5jZSAqZG1hX2ZlbmNlX2FsbG9jYXRlX3ByaXZhdGVfc3R1
YihrdGltZV90IHRpbWVzdGFtcCkNCj4gIAlpZiAoZmVuY2UgPT0gTlVMTCkNCj4gIAkJcmV0dXJu
IE5VTEw7DQo+ICANCj4gLQlkbWFfZmVuY2VfaW5pdChmZW5jZSwNCj4gLQkJICAgICAgICZkbWFf
ZmVuY2Vfc3R1Yl9vcHMsDQo+IC0JCSAgICAgICAmZG1hX2ZlbmNlX3N0dWJfbG9jaywNCj4gLQkJ
ICAgICAgIDAsIDApOw0KPiAtDQo+ICsJZG1hX2ZlbmNlX2luaXQoZmVuY2UsICZkbWFfZmVuY2Vf
c3R1Yl9vcHMsIE5VTEwsIDAsIDApOw0KPiAgCXNldF9iaXQoRE1BX0ZFTkNFX0ZMQUdfRU5BQkxF
X1NJR05BTF9CSVQsDQo+ICAJCSZmZW5jZS0+ZmxhZ3MpOw0KPiAgDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
