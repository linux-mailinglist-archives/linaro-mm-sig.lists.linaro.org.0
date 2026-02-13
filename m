Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EFIGJMUR4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:43:49 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 28254411E24
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:43:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3EEE544FA8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:43:48 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id C23D63F773
	for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Feb 2026 14:33:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=a1ROsC2F;
	spf=pass (lists.linaro.org: domain of boris.brezillon@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1770993216;
	bh=m02PGLQN3ryTu9fwdCznLHLg+swjN9H1cBfggzX1uwA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=a1ROsC2FyzD/GuUou+QMgctw7kHEv1x7rhrRTVyuvgh0yDdxl+zSeMu8OvbpGGmmF
	 yNmEe03Nm10sF/jsU7pkXKxRl/EVDZvlh8RFNyOlQyYpZb1iNYsqVQd8BIsyhOvczd
	 vnSOd+slLuR5f18k4foalXp16gBk0uLjnBwvFeLinXAamKoFZRSXiTC/MIt+/Z5k8A
	 Hri1jk7MtPJDY7n+unLweJ+kvoD9K66mP/WQDaizsGOVmbL+btHGrUm+EBiJPwyPOZ
	 q2UqfdlNnLhClaiAncMUPHRdeAggyYoqTC4jIlQnK/LebRWLKCcHd+d9gzcDTgOIIQ
	 oyOC0tBur8mXw==
Received: from fedora (unknown [IPv6:2a01:e0a:2c:6930:d919:a6e:5ea1:8a9f])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id DC15517E00AC;
	Fri, 13 Feb 2026 15:33:35 +0100 (CET)
Date: Fri, 13 Feb 2026 15:33:31 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: "Christian =?UTF-8?B?S8O2bmln?=" <ckoenig.leichtzumerken@gmail.com>
Message-ID: <20260213153331.30c3cdcb@fedora>
In-Reply-To: <20260210102232.1642-8-christian.koenig@amd.com>
References: <20260210102232.1642-1-christian.koenig@amd.com>
	<20260210102232.1642-8-christian.koenig@amd.com>
Organization: Collabora
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: TG2VFYLQRL5JHXJHTJPJQMK6OQWNS3FK
X-Message-ID-Hash: TG2VFYLQRL5JHXJHTJPJQMK6OQWNS3FK
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:36:24 +0000
CC: phasta@mailbox.org, matthew.brost@intel.com, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 7/8] dma-buf: use inline lock for the dma-fence-array
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TG2VFYLQRL5JHXJHTJPJQMK6OQWNS3FK/>
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
	NEURAL_HAM(-0.00)[-0.816];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:email,collabora.com:email,igalia.com:email]
X-Rspamd-Queue-Id: 28254411E24
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCAxMCBGZWIgMjAyNiAxMTowMjowMiArMDEwMA0KIkNocmlzdGlhbiBLw7ZuaWciIDxj
a29lbmlnLmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6DQoNCj4gVXNpbmcgdGhlIGlu
bGluZSBsb2NrIGlzIG5vdyB0aGUgcmVjb21tZW5kZWQgd2F5IGZvciBkbWFfZmVuY2UNCj4gaW1w
bGVtZW50YXRpb25zLg0KPiANCj4gU28gdXNlIHRoaXMgYXBwcm9hY2ggZm9yIHRoZSBmcmFtZXdv
cmsncyBpbnRlcm5hbCBmZW5jZXMgYXMgd2VsbC4NCj4gDQo+IEFsc28gc2F2ZXMgYWJvdXQgNCBi
eXRlcyBmb3IgdGhlIGV4dGVybmFsIHNwaW5sb2NrLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQ2hy
aXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiBSZXZpZXdlZC1ieTog
VHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlnYWxpYS5jb20+DQo+IFJldmlld2VkLWJ5
OiBQaGlsaXBwIFN0YW5uZXIgPHBoYXN0YUBrZXJuZWwub3JnPg0KDQpSZXZpZXdlZC1ieTogQm9y
aXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4NCg0KPiAtLS0NCj4g
IGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYyB8IDUgKystLS0NCj4gIGluY2x1ZGUv
bGludXgvZG1hLWZlbmNlLWFycmF5LmggICB8IDEgLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9k
bWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJh
eS5jDQo+IGluZGV4IDY2NTdkNGIzMGFmOS4uYzIxMTlhODA0OWZlIDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMNCj4gKysrIGIvZHJpdmVycy9kbWEtYnVm
L2RtYS1mZW5jZS1hcnJheS5jDQo+IEBAIC0yMDQsOSArMjA0LDggQEAgdm9pZCBkbWFfZmVuY2Vf
YXJyYXlfaW5pdChzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5ICphcnJheSwNCj4gIA0KPiAgCWFycmF5
LT5udW1fZmVuY2VzID0gbnVtX2ZlbmNlczsNCj4gIA0KPiAtCXNwaW5fbG9ja19pbml0KCZhcnJh
eS0+bG9jayk7DQo+IC0JZG1hX2ZlbmNlX2luaXQoJmFycmF5LT5iYXNlLCAmZG1hX2ZlbmNlX2Fy
cmF5X29wcywgJmFycmF5LT5sb2NrLA0KPiAtCQkgICAgICAgY29udGV4dCwgc2Vxbm8pOw0KPiAr
CWRtYV9mZW5jZV9pbml0KCZhcnJheS0+YmFzZSwgJmRtYV9mZW5jZV9hcnJheV9vcHMsIE5VTEws
IGNvbnRleHQsDQo+ICsJCSAgICAgICBzZXFubyk7DQo+ICAJaW5pdF9pcnFfd29yaygmYXJyYXkt
PndvcmssIGlycV9kbWFfZmVuY2VfYXJyYXlfd29yayk7DQo+ICANCj4gIAlhdG9taWNfc2V0KCZh
cnJheS0+bnVtX3BlbmRpbmcsIHNpZ25hbF9vbl9hbnkgPyAxIDogbnVtX2ZlbmNlcyk7DQo+IGRp
ZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1hcnJheS5oIGIvaW5jbHVkZS9saW51
eC9kbWEtZmVuY2UtYXJyYXkuaA0KPiBpbmRleCAwNzliM2RlYzBhMTYuLjM3MGIzZDJiYmEzNyAx
MDA2NDQNCj4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtYXJyYXkuaA0KPiArKysgYi9p
bmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1hcnJheS5oDQo+IEBAIC0zOCw3ICszOCw2IEBAIHN0cnVj
dCBkbWFfZmVuY2VfYXJyYXlfY2Igew0KPiAgc3RydWN0IGRtYV9mZW5jZV9hcnJheSB7DQo+ICAJ
c3RydWN0IGRtYV9mZW5jZSBiYXNlOw0KPiAgDQo+IC0Jc3BpbmxvY2tfdCBsb2NrOw0KPiAgCXVu
c2lnbmVkIG51bV9mZW5jZXM7DQo+ICAJYXRvbWljX3QgbnVtX3BlbmRpbmc7DQo+ICAJc3RydWN0
IGRtYV9mZW5jZSAqKmZlbmNlczsNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
