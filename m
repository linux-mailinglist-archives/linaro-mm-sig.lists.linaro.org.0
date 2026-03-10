Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UKK5K+M8sGmohQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Mar 2026 16:46:43 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F22A6253E34
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Mar 2026 16:46:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E55953F79F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Mar 2026 15:46:41 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id E59C43F79F
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Mar 2026 15:46:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=G3bIIElj;
	spf=pass (lists.linaro.org: domain of aesteve@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=aesteve@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1773157599;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Jm9RLDPaaT3j+gPSqhDteLms1KMvfMsdB8K+UVkI8jo=;
	b=G3bIIEljxCaSiYbn/3w3XfxwOwJw/c0wcXgPcyHpPVYpWFkSngTlRbY2zWsPSVR5vF2Gvx
	Zfm43FsdFxbdNA1BMIaFtalQweGP6N3qcJ4w8Od7z0pyRLVEbNks0LcR0vOPihEqBwz1UC
	arjAlrV7spfDNe3+qGMG5FxOeBumOjE=
Received: from mail-yw1-f200.google.com (mail-yw1-f200.google.com
 [209.85.128.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-127-8XNfDV0wOF-0JlcWHNWGpw-1; Tue, 10 Mar 2026 11:46:38 -0400
X-MC-Unique: 8XNfDV0wOF-0JlcWHNWGpw-1
X-Mimecast-MFC-AGG-ID: 8XNfDV0wOF-0JlcWHNWGpw_1773157598
Received: by mail-yw1-f200.google.com with SMTP id 00721157ae682-79895ffb315so27599147b3.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Mar 2026 08:46:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773157598; x=1773762398;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Jm9RLDPaaT3j+gPSqhDteLms1KMvfMsdB8K+UVkI8jo=;
        b=apJgvfcN9/6rxGv+kPW0UoRBkRzUtOttIlv1AXVgaAeH/0DOdKPRl5i1GUrdCZ8rqo
         qwCskpKYPZFHTZXwOEx7YI4fi7snBY4PXErnF2b45hpn04tBawP5d2Xlbp+R4+aksy0P
         RfR7MRIC/F9P1FZYVv7F0Bccsa1MlQ+McbBUVtOVVIp2o0X+0XXRcpUhsO2SntMrKssy
         ibplDLZIcMoWZKluve8TUZ/w8wGxTdGsyl41feLEsapa/Dqldn9v8DbmpCHEmQNon3Q0
         eeNR60Y1G1LfbGCpReq6i5Ljaj+bZwniows0I8YjRF4YAXnMqLpdgrt67BqlGnUs0nL3
         GYYw==
X-Forwarded-Encrypted: i=1; AJvYcCUvFtuyAdZJyK7NA7lSOYT1gC1q1lxqDo+7j0p3lpwp4GIOPfm1Q+oX3mXT81jXE/g0kTL1wRYfsQeKGaI2@lists.linaro.org
X-Gm-Message-State: AOJu0Yx+coHuxmabyo5IgRmVc7+jI/84NfED2gHBaY6WBAYFETLsnFvT
	NOHQODxGsWbNKkgHT3pO+jTPrHXbWiaKnVmGuxfFJUOYo4I22nFAWimVgxORcZl9aL8ynAvVPVY
	bcyEcIo22uQgUhXuVYO5pYGnGJA9YOvbbaA9LuwthbOmbrZusaLc69yyf2Wt7LSXfc4kxDiCZiI
	QovTNYO1iH7s/eB0roZfyr5jrWqpN9vCkH7D15+hg5Usw=
X-Gm-Gg: ATEYQzxu1wR5I8QXUJ/ps+ltHSMESuU20jRnLLeXC0XaHqF9ojoRlqVXbAYKOvT1bbq
	FyW9MHWwwPqz6hNAFFx4ZfDILTL/TOaC8PF6ixxRDpazlrJlwogS4SkD6vbLi+Buoy9JhnJFqdn
	79mjbmqNYGr54uqTUUeE3KCprQ6+d0I4uaxlD0bwcd5sFJwhgkFt2G9RIuFzSPi8ID+N1oY3CNh
	A==
X-Received: by 2002:a05:690c:c52e:b0:794:cf56:5bc4 with SMTP id 00721157ae682-798dd7967acmr135919987b3.43.1773157597661;
        Tue, 10 Mar 2026 08:46:37 -0700 (PDT)
X-Received: by 2002:a05:690c:c52e:b0:794:cf56:5bc4 with SMTP id
 00721157ae682-798dd7967acmr135919707b3.43.1773157597202; Tue, 10 Mar 2026
 08:46:37 -0700 (PDT)
MIME-Version: 1.0
References: <20260306-b4-dmabuf-heap-coherent-rmem-v3-0-3d00d36c9bc4@redhat.com>
 <20260306-b4-dmabuf-heap-coherent-rmem-v3-1-3d00d36c9bc4@redhat.com> <c7c1a4dd-dd10-4490-998b-55f9ec5989a7@ti.com>
In-Reply-To: <c7c1a4dd-dd10-4490-998b-55f9ec5989a7@ti.com>
From: Albert Esteve <aesteve@redhat.com>
Date: Tue, 10 Mar 2026 16:46:26 +0100
X-Gm-Features: AaiRm52UQkdg-mPAmXvgjVPkoZxrbr_lB6LVxp0pI4Zhk--PPRrGDed_i5m98TE
Message-ID: <CADSE00KgYP0RsSN7wpSrPHDJUfVye40R=KW6XznLxzW16=QmAA@mail.gmail.com>
To: Andrew Davis <afd@ti.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: ZZjWFQRuPllVG2rbj7On3z7yaGo2XnyyfGoxAruo_0s_1773157598
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ------
Message-ID-Hash: TCFWAYCDBWWRHPFVTYJ3JGBWIRZ4SC73
X-Message-ID-Hash: TCFWAYCDBWWRHPFVTYJ3JGBWIRZ4SC73
X-MailFrom: aesteve@redhat.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, devicetree@vger.kernel.org, mripard@redhat.com, echanude@redhat.com, John Stultz <john.stultz@linaro.org>, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 1/6] dma-buf: dma-heap: Keep track of the heap device struct
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TCFWAYCDBWWRHPFVTYJ3JGBWIRZ4SC73/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: F22A6253E34
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.974];
	FROM_NEQ_ENVFROM(0.00)[aesteve@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[redhat.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,mail.gmail.com:mid,ti.com:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Action: no action

T24gVHVlLCBNYXIgMTAsIDIwMjYgYXQgMzozOOKAr1BNIEFuZHJldyBEYXZpcyA8YWZkQHRpLmNv
bT4gd3JvdGU6DQo+DQo+IE9uIDMvNi8yNiA0OjM2IEFNLCBBbGJlcnQgRXN0ZXZlIHdyb3RlOg0K
PiA+IEZyb206IEpvaG4gU3R1bHR6IDxqb2huLnN0dWx0ekBsaW5hcm8ub3JnPg0KPiA+DQo+ID4g
S2VlcCB0cmFjayBvZiB0aGUgaGVhcCBkZXZpY2Ugc3RydWN0Lg0KPiA+DQo+ID4gVGhpcyB3aWxs
IGJlIHVzZWZ1bCBmb3Igc3BlY2lhbCBETUEgYWxsb2NhdGlvbnMNCj4gPiBhbmQgYWN0aW9ucy4N
Cj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvaG4gU3R1bHR6IDxqb2huLnN0dWx0ekBsaW5hcm8u
b3JnPg0KPiA+IFJldmlld2VkLWJ5OiBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+
DQo+ID4gU2lnbmVkLW9mZi1ieTogQWxiZXJ0IEVzdGV2ZSA8YWVzdGV2ZUByZWRoYXQuY29tPg0K
PiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmMgfCAzNCArKysrKysrKysr
KysrKysrKysrKysrKysrKy0tLS0tLS0tDQo+ID4gICBpbmNsdWRlL2xpbnV4L2RtYS1oZWFwLmgg
ICB8ICAyICsrDQo+ID4gICAyIGZpbGVzIGNoYW5nZWQsIDI4IGluc2VydGlvbnMoKyksIDggZGVs
ZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFw
LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYw0KPiA+IGluZGV4IGFjNWY4Njg1YTY0OTQu
LjExMjRkNjNlYjEzOTggMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFw
LmMNCj4gPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYw0KPiA+IEBAIC0zMSw2ICsz
MSw3IEBADQo+ID4gICAgKiBAaGVhcF9kZXZ0OiAgICAgICAgICAgICAgaGVhcCBkZXZpY2Ugbm9k
ZQ0KPiA+ICAgICogQGxpc3Q6ICAgICAgICAgICBsaXN0IGhlYWQgY29ubmVjdGluZyB0byBsaXN0
IG9mIGhlYXBzDQo+ID4gICAgKiBAaGVhcF9jZGV2OiAgICAgICAgICAgICAgaGVhcCBjaGFyIGRl
dmljZQ0KPiA+ICsgKiBAaGVhcF9kZXY6ICAgICAgICAgICAgICAgIGhlYXAgZGV2aWNlDQo+ID4g
ICAgKg0KPiA+ICAgICogUmVwcmVzZW50cyBhIGhlYXAgb2YgbWVtb3J5IGZyb20gd2hpY2ggYnVm
ZmVycyBjYW4gYmUgbWFkZS4NCj4gPiAgICAqLw0KPiA+IEBAIC00MSw2ICs0Miw3IEBAIHN0cnVj
dCBkbWFfaGVhcCB7DQo+ID4gICAgICAgZGV2X3QgaGVhcF9kZXZ0Ow0KPiA+ICAgICAgIHN0cnVj
dCBsaXN0X2hlYWQgbGlzdDsNCj4gPiAgICAgICBzdHJ1Y3QgY2RldiBoZWFwX2NkZXY7DQo+ID4g
KyAgICAgc3RydWN0IGRldmljZSAqaGVhcF9kZXY7DQo+ID4gICB9Ow0KPiA+DQo+ID4gICBzdGF0
aWMgTElTVF9IRUFEKGhlYXBfbGlzdCk7DQo+ID4gQEAgLTIyMyw2ICsyMjUsMTkgQEAgY29uc3Qg
Y2hhciAqZG1hX2hlYXBfZ2V0X25hbWUoc3RydWN0IGRtYV9oZWFwICpoZWFwKQ0KPiA+ICAgfQ0K
PiA+ICAgRVhQT1JUX1NZTUJPTF9OU19HUEwoZG1hX2hlYXBfZ2V0X25hbWUsICJETUFfQlVGX0hF
QVAiKTsNCj4gPg0KPiA+ICsvKioNCj4gPiArICogZG1hX2hlYXBfZ2V0X2RldigpIC0gZ2V0IGRl
dmljZSBzdHJ1Y3QgZm9yIHRoZSBoZWFwDQo+ID4gKyAqIEBoZWFwOiBETUEtSGVhcCB0byByZXRy
aWV2ZSBkZXZpY2Ugc3RydWN0IGZyb20NCj4gPiArICoNCj4gPiArICogUmV0dXJuczoNCj4gPiAr
ICogVGhlIGRldmljZSBzdHJ1Y3QgZm9yIHRoZSBoZWFwLg0KPiA+ICsgKi8NCj4gPiArc3RydWN0
IGRldmljZSAqZG1hX2hlYXBfZ2V0X2RldihzdHJ1Y3QgZG1hX2hlYXAgKmhlYXApDQo+ID4gK3sN
Cj4gPiArICAgICByZXR1cm4gaGVhcC0+aGVhcF9kZXY7DQo+ID4gK30NCj4gPiArRVhQT1JUX1NZ
TUJPTF9OU19HUEwoZG1hX2hlYXBfZ2V0X2RldiwgIkRNQV9CVUZfSEVBUCIpOw0KPiA+ICsNCj4g
PiAgIC8qKg0KPiA+ICAgICogZG1hX2hlYXBfYWRkIC0gYWRkcyBhIGhlYXAgdG8gZG1hYnVmIGhl
YXBzDQo+ID4gICAgKiBAZXhwX2luZm86IGluZm9ybWF0aW9uIG5lZWRlZCB0byByZWdpc3RlciB0
aGlzIGhlYXANCj4gPiBAQCAtMjMwLDcgKzI0NSw2IEBAIEVYUE9SVF9TWU1CT0xfTlNfR1BMKGRt
YV9oZWFwX2dldF9uYW1lLCAiRE1BX0JVRl9IRUFQIik7DQo+ID4gICBzdHJ1Y3QgZG1hX2hlYXAg
KmRtYV9oZWFwX2FkZChjb25zdCBzdHJ1Y3QgZG1hX2hlYXBfZXhwb3J0X2luZm8gKmV4cF9pbmZv
KQ0KPiA+ICAgew0KPiA+ICAgICAgIHN0cnVjdCBkbWFfaGVhcCAqaGVhcCwgKmgsICplcnJfcmV0
Ow0KPiA+IC0gICAgIHN0cnVjdCBkZXZpY2UgKmRldl9yZXQ7DQo+ID4gICAgICAgdW5zaWduZWQg
aW50IG1pbm9yOw0KPiA+ICAgICAgIGludCByZXQ7DQo+ID4NCj4gPiBAQCAtMjcyLDE0ICsyODYs
MTQgQEAgc3RydWN0IGRtYV9oZWFwICpkbWFfaGVhcF9hZGQoY29uc3Qgc3RydWN0IGRtYV9oZWFw
X2V4cG9ydF9pbmZvICpleHBfaW5mbykNCj4gPiAgICAgICAgICAgICAgIGdvdG8gZXJyMTsNCj4g
PiAgICAgICB9DQo+ID4NCj4gPiAtICAgICBkZXZfcmV0ID0gZGV2aWNlX2NyZWF0ZShkbWFfaGVh
cF9jbGFzcywNCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICBOVUxMLA0KPiA+IC0g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGhlYXAtPmhlYXBfZGV2dCwNCj4gPiAtICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBOVUxMLA0KPiA+IC0gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGhlYXAtPm5hbWUpOw0KPiA+IC0gICAgIGlmIChJU19FUlIoZGV2X3JldCkpIHsNCj4g
PiArICAgICBoZWFwLT5oZWFwX2RldiA9IGRldmljZV9jcmVhdGUoZG1hX2hlYXBfY2xhc3MsDQo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIE5VTEwsDQo+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGhlYXAtPmhlYXBfZGV2dCwNCj4gPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgTlVMTCwNCj4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgaGVhcC0+bmFtZSk7DQo+ID4gKyAgICAgaWYgKElTX0VS
UihoZWFwLT5oZWFwX2RldikpIHsNCj4gPiAgICAgICAgICAgICAgIHByX2VycigiZG1hX2hlYXA6
IFVuYWJsZSB0byBjcmVhdGUgZGV2aWNlXG4iKTsNCj4gPiAtICAgICAgICAgICAgIGVycl9yZXQg
PSBFUlJfQ0FTVChkZXZfcmV0KTsNCj4gPiArICAgICAgICAgICAgIGVycl9yZXQgPSBFUlJfQ0FT
VChoZWFwLT5oZWFwX2Rldik7DQo+ID4gICAgICAgICAgICAgICBnb3RvIGVycjI7DQo+ID4gICAg
ICAgfQ0KPiA+DQo+ID4gQEAgLTI5NSw2ICszMDksMTAgQEAgc3RydWN0IGRtYV9oZWFwICpkbWFf
aGVhcF9hZGQoY29uc3Qgc3RydWN0IGRtYV9oZWFwX2V4cG9ydF9pbmZvICpleHBfaW5mbykNCj4g
PiAgICAgICAgICAgICAgIH0NCj4gPiAgICAgICB9DQo+ID4NCj4gPiArICAgICAvKiBNYWtlIHN1
cmUgaXQgZG9lc24ndCBkaXNhcHBlYXIgb24gdXMgKi8NCj4gPiArICAgICBoZWFwLT5oZWFwX2Rl
diA9IGdldF9kZXZpY2UoaGVhcC0+aGVhcF9kZXYpOw0KPiA+ICsNCj4gPiArDQo+DQo+IElzIHRo
aXMgYWN0dWFsbHkgc29tZXRoaW5nIHRoYXQgbWF0dGVycyBvciBjb3VsZCBoYXBwZW4/IFNlZW1z
IHlvdQ0KPiBqdXN0IHJlbW92ZSBpdCBpbiB0aGUgbmV4dCBwYXRjaCBhbnl3YXkuDQoNCkdvb2Qg
cXVlc3Rpb24uIFRlY2huaWNhbGx5LCBkZXZpY2VfYWRkKCkgKGFuZCB0aGVyZWZvcmUsIGFsc28N
CmRldmljZV9jcmVhdGUoKSkgYWxyZWFkeSBpbmNyZW1lbnRzIHRoZSByZWZjb3VudCBieSBjYWxs
aW5nDQpnZXRfZGV2aWNlKCkgaW50ZXJuYWxseS4gU28gSSdtIG5vdCBzdXJlIGlmIHRoaXMgaXMg
bmVjZXNzYXJ5LCBJIGp1c3QNCmNhcnJpZWQgaXQgb3ZlciB3aGVuIEkgcGlja2VkIHRoZSBwYXRj
aC4gSXQgZmVlbHMgbGlrZSBhIHNhZmVndWFyZCB0bw0KaGF2ZSB0aGUgZGV2aWNlIG93bmVyIGhv
bGQgYW4gZXh0cmEgcmVmZXJlbmNlIHNvIHRoYXQgaWYgb3RoZXIgY29kZQ0KZGVjcmVhc2VzIHRo
ZSByZWZlcmVuY2UgY291bnQsIHRoZSBoZWFwIGRldmljZSB3b24ndCBiZSBkZXN0cm95ZWQuIFNv
LA0KaGF2aW5nIHRoZSBleHRyYSByZWZlcmVuY2UgY2F1c2VzIG5vIGhhcm0uDQoNCkkgZHJvcHBl
ZCBpdCBpbiB0aGUgbmV4dCBwYXRjaCBiZWNhdXNlIG90aGVyd2lzZSwgSSB3b3VsZCBoYXZlIHRv
DQphY2NvdW50IGZvciAoYW5kIGRyb3ApIGJvdGggcmVmZXJlbmNlcyB3aGVuIGltcGxlbWVudGlu
Zw0KZG1hX2hlYXBfZGVzdHJveSgpLg0KDQpTbywgSSdtIG5vdCBzdXJlIHdoYXQgdGhlIGJlc3Qg
cGF0dGVybiBpcyBoZXJlLiBCdXQgSSBkbyBhZ3JlZSB0aGF0IEkNCnNob3VsZCBlaXRoZXIgcmVt
b3ZlIGl0IGZyb20gYm90aCBwYXRjaGVzIG9yIGtlZXAgaXQgZm9yIGJvdGguDQoNCkJSLA0KQWxi
ZXJ0Lg0KDQoNCj4NCj4gQW5kcmV3DQo+DQo+ID4gICAgICAgLyogQWRkIGhlYXAgdG8gdGhlIGxp
c3QgKi8NCj4gPiAgICAgICBsaXN0X2FkZCgmaGVhcC0+bGlzdCwgJmhlYXBfbGlzdCk7DQo+ID4g
ICAgICAgbXV0ZXhfdW5sb2NrKCZoZWFwX2xpc3RfbG9jayk7DQo+ID4gZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvbGludXgvZG1hLWhlYXAuaCBiL2luY2x1ZGUvbGludXgvZG1hLWhlYXAuaA0KPiA+IGlu
ZGV4IDY0ODMyOGE2NGIyN2UuLjQ5MzA4NWU2OWI3MGUgMTAwNjQ0DQo+ID4gLS0tIGEvaW5jbHVk
ZS9saW51eC9kbWEtaGVhcC5oDQo+ID4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEtaGVhcC5oDQo+
ID4gQEAgLTEyLDYgKzEyLDcgQEANCj4gPiAgICNpbmNsdWRlIDxsaW51eC90eXBlcy5oPg0KPiA+
DQo+ID4gICBzdHJ1Y3QgZG1hX2hlYXA7DQo+ID4gK3N0cnVjdCBkZXZpY2U7DQo+ID4NCj4gPiAg
IC8qKg0KPiA+ICAgICogc3RydWN0IGRtYV9oZWFwX29wcyAtIG9wcyB0byBvcGVyYXRlIG9uIGEg
Z2l2ZW4gaGVhcA0KPiA+IEBAIC00Myw2ICs0NCw3IEBAIHN0cnVjdCBkbWFfaGVhcF9leHBvcnRf
aW5mbyB7DQo+ID4gICB2b2lkICpkbWFfaGVhcF9nZXRfZHJ2ZGF0YShzdHJ1Y3QgZG1hX2hlYXAg
KmhlYXApOw0KPiA+DQo+ID4gICBjb25zdCBjaGFyICpkbWFfaGVhcF9nZXRfbmFtZShzdHJ1Y3Qg
ZG1hX2hlYXAgKmhlYXApOw0KPiA+ICtzdHJ1Y3QgZGV2aWNlICpkbWFfaGVhcF9nZXRfZGV2KHN0
cnVjdCBkbWFfaGVhcCAqaGVhcCk7DQo+ID4NCj4gPiAgIHN0cnVjdCBkbWFfaGVhcCAqZG1hX2hl
YXBfYWRkKGNvbnN0IHN0cnVjdCBkbWFfaGVhcF9leHBvcnRfaW5mbyAqZXhwX2luZm8pOw0KPiA+
DQo+ID4NCj4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
