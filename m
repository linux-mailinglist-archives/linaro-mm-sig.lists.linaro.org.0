Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sCekLluuqmluVQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 06 Mar 2026 11:37:15 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB1721EDE5
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 06 Mar 2026 11:37:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3698D3F6C2
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 Mar 2026 10:37:14 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id A60FE3F6C2
	for <linaro-mm-sig@lists.linaro.org>; Fri,  6 Mar 2026 10:37:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=WoTkBhZB;
	spf=pass (lists.linaro.org: domain of aesteve@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=aesteve@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1772793431;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=CNok9dmrehJj085xLfY0Qs/d7XMY0KJw2lUvqcVr7uo=;
	b=WoTkBhZBelYn4qeju9Uyfw2oC7UTqp0UAlI3RrsTnVtKj3NgPFbxiXcAIWJd7aKzmTfF6P
	xzdSZCAkrcnms72dzAAUyZiJn3gZJHOURHghL/NuTrWpVy31c/S8MCyc5R1ofB9sTA0y6r
	QLLtkMwiGk7AvGwPKanIUwZFRqTeMi8=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-96-fZ85QXqmMvy5WsYgpsd6pQ-1; Fri,
 06 Mar 2026 05:37:08 -0500
X-MC-Unique: fZ85QXqmMvy5WsYgpsd6pQ-1
X-Mimecast-MFC-AGG-ID: fZ85QXqmMvy5WsYgpsd6pQ_1772793425
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6B9FC1956089;
	Fri,  6 Mar 2026 10:37:05 +0000 (UTC)
Received: from [192.168.1.153] (unknown [10.45.226.103])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 38DB11800576;
	Fri,  6 Mar 2026 10:36:57 +0000 (UTC)
From: Albert Esteve <aesteve@redhat.com>
Date: Fri, 06 Mar 2026 11:36:31 +0100
Message-Id: <20260306-b4-dmabuf-heap-coherent-rmem-v3-0-3d00d36c9bc4@redhat.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/4XOTQ7CIBCG4as0rB1DhxatK+9hXFAYhEV/ApVom
 t5d2sQYN7p8Z/F8M7NIwVNkp2JmgZKPfuhziF3BtFP9jcCb3Aw5So4ooK3AdKq9W3CkRtCDo0D
 9BKGjDprSGtGgVJYalokxkPWPjb9cczsfpyE8t7VUrtc3XP2GUwklGGvJVgKbo9LnQMapaa+Hj
 q1ywo8m+J83EwIHWatK1qIV4nD80pZleQFHSBIuFwEAAA==
X-Change-ID: 20260223-b4-dmabuf-heap-coherent-rmem-91fd3926afe9
To: Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>,
 Saravana Kannan <saravanak@kernel.org>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772793417; l=4098;
 i=aesteve@redhat.com; s=20260303; h=from:subject:message-id;
 bh=ExZnC7goEKWKM6Rtl+U4JqZvVGyaRn8TBOjYWQsS5l0=;
 b=UNGgoXKmH542rSOqPbjXTgBDaWRdkdTQo0EoW9KZ1vE/PiAG6Zcb1qM/GgwOycyhucLQJuOwG
 Mtb4/HsYkEWDLTZxjMPx0QbPMjLBfxdVBdXHDeL+WLZ6QFhoR4GGmXF
X-Developer-Key: i=aesteve@redhat.com; a=ed25519;
 pk=YSFz6sOHd2L45+Fr8DIvHTi6lSIjhLZ5T+rkxspJt1s=
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-MFC-PROC-ID: NFMaMqQUAkL-yVcrTc__UQDvfcOHYnk3WreNq20rTsg_1772793425
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
X-Spamd-Bar: ----
Message-ID-Hash: GSPLWSNPC2JQ4734FH5IDT5C7PIMRYYD
X-Message-ID-Hash: GSPLWSNPC2JQ4734FH5IDT5C7PIMRYYD
X-MailFrom: aesteve@redhat.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, devicetree@vger.kernel.org, Albert Esteve <aesteve@redhat.com>, mripard@redhat.com, echanude@redhat.com, John Stultz <john.stultz@linaro.org>, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 0/6] dma-buf: heaps: add coherent reserved-memory heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GSPLWSNPC2JQ4734FH5IDT5C7PIMRYYD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 4FB1721EDE5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[redhat.com:-];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[aesteve@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.947];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

VGhpcyBwYXRjaCBzZXJpZXMgYWRkcyBhIG5ldyBkbWEtYnVmIGhlYXAgZHJpdmVyIHRoYXQgZXhw
b3NlcyBjb2hlcmVudCwNCm5vbuKAkXJldXNhYmxlIHJlc2VydmVkLW1lbW9yeSByZWdpb25zIGFz
IG5hbWVkIGhlYXBzLCBzbyB1c2Vyc3BhY2UgY2FuDQpleHBsaWNpdGx5IGFsbG9jYXRlIGJ1ZmZl
cnMgZnJvbSB0aG9zZSBkZXZpY2XigJFzcGVjaWZpYyBwb29scy4NCg0KTW90aXZhdGlvbjogd2Ug
d2FudCBjZ3JvdXAgYWNjb3VudGluZyBmb3IgYWxsIHVzZXJzcGFjZeKAkXZpc2libGUgYnVmZmVy
DQphbGxvY2F0aW9ucyAoRFJNLCB2NGwyLCBkbWHigJFidWYgaGVhcHMsIGV0Yy4pLiBUaGF04oCZ
cyBoYXJkIHRvIGRvIHdoZW4NCmRyaXZlcnMgY2FsbCBkbWFfYWxsb2NfYXR0cnMoKSBkaXJlY3Rs
eSBiZWNhdXNlIHRoZSBhY2NvdW50aW5nIGNvbnRyb2xsZXINCihtZW1jZyB2cyBkbWVtKSBpcyBh
bWJpZ3VvdXMuIFRoZSBsb25n4oCRdGVybSBwbGFuIGlzIHRvIHN0ZWVyIHRob3NlIHBhdGhzDQp0
b3dhcmQgZG1h4oCRYnVmIGhlYXBzLCB3aGVyZSBlYWNoIGhlYXAgY2FuIHVuYW1iaWd1b3VzbHkg
Y2hhcmdlIGEgc2luZ2xlDQpjb250cm9sbGVyLiBUbyByZWFjaCB0aGF0IGdvYWwsIHdlIG5lZWQg
YSBoZWFwIGJhY2tlbmQgZm9yIGVhY2gNCmRtYV9hbGxvY19hdHRycygpIG1lbW9yeSB0eXBlLiBD
TUEgYW5kIHN5c3RlbSBoZWFwcyBhbHJlYWR5IGV4aXN0Ow0KY29oZXJlbnQgcmVzZXJ2ZWTigJFt
ZW1vcnkgd2FzIHRoZSBtaXNzaW5nIHBpZWNlLCBzaW5jZSBtYW55IFNvQ3MgZGVmaW5lDQpkZWRp
Y2F0ZWQsIGRldmljZeKAkWxvY2FsIGNvaGVyZW50IHBvb2xzIGluIERUIHVuZGVyIC9yZXNlcnZl
ZC1tZW1vcnkgdXNpbmcNCiJzaGFyZWQtZG1hLXBvb2wiIHdpdGggbm9u4oCRcmV1c2FibGUgcmVn
aW9ucyAoaS5lLiwgbm90IENNQSkgdGhhdCBhcmUNCmNhcnZlZCBvdXQgZXhjbHVzaXZlbHkgZm9y
IGNvaGVyZW50IERNQSBhbmQgYXJlIGN1cnJlbnRseSBvbmx5IHVzYWJsZSBieQ0KaW7igJFrZXJu
ZWwgZHJpdmVycy4NCg0KQmVjYXVzZSB0aGVzZSByZWdpb25zIGFyZSBkZXZpY2XigJFkZXBlbmRl
bnQsIGVhY2ggaGVhcCBpbnN0YW5jZSBiaW5kcyBhDQpoZWFwIGRldmljZSB0byBpdHMgcmVzZXJ2
ZWTigJFtZW0gcmVnaW9uIHZpYSBhIG5ld2x5IGludHJvZHVjZWQgaGVscGVyDQpmdW5jdGlvbiAt
bmFtZWx5LCBvZl9yZXNlcnZlZF9tZW1fZGV2aWNlX2luaXRfd2l0aF9tZW0oKS0gc28gY29oZXJl
bnQNCmFsbG9jYXRpb25zIHVzZSB0aGUgY29ycmVjdCBkZXYtPmRtYV9tZW0uDQoNCkNoYXJnaW5n
IHRvIGNncm91cHMgZm9yIHRoZXNlIGJ1ZmZlcnMgaXMgaW50ZW50aW9uYWxseSBsZWZ0IG91dCB0
byBrZWVwDQpyZXZpZXcgZm9jdXNlZCBvbiB0aGUgbmV3IGhlYXA7IEkgcGxhbiB0byBmb2xsb3cg
dXAgYmFzZWQgb24gRXJpY+KAmXMgWzFdDQphbmQgTWF4aW1l4oCZcyBbMl0gd29yayBvbiBkbWVt
IGNoYXJnaW5nIGZyb20gdXNlcnNwYWNlLg0KDQpUaGlzIHNlcmllcyBhbHNvIG1ha2VzIHRoZSBu
ZXcgaGVhcCBkcml2ZXIgbW9kdWxhciwgaW4gbGluZSB3aXRoIHRoZSBDTUENCmhlYXAgY2hhbmdl
IGluIFszXS4NCg0KWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI2MDIxOC1kbWFi
dWYtaGVhcC1jbWEtZG1lbS12Mi0wLWIyNDk4ODZmYjdiMkByZWRoYXQuY29tLw0KWzJdIGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI1MDMxMC1kbWVtLWNncm91cHMtdjEtMC0yOTg0YzFi
YzkzMTJAa2VybmVsLm9yZy8NClszXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjAz
MDMtZG1hLWJ1Zi1oZWFwcy1hcy1tb2R1bGVzLXYzLTAtMjQzNDQ4MTJjNzA3QGtlcm5lbC5vcmcv
DQoNClNpZ25lZC1vZmYtYnk6IEFsYmVydCBFc3RldmUgPGFlc3RldmVAcmVkaGF0LmNvbT4NCi0t
LQ0KQ2hhbmdlcyBpbiB2MzoNCi0gUmVvcmdhbml6ZWQgY2hhbmdlc2V0cyBhbW9uZyBwYXRjaGVz
IHRvIGVuc3VyZSBiaXNlY3RhYmlsaXR5DQotIFJlbW92ZWQgdW51c2VkIGRtYV9oZWFwX2NvaGVy
ZW50X3JlZ2lzdGVyKCkgbGVmdG92ZXINCi0gUmVtb3ZlZCBmYWxsYmFjayB3aGVuIHNldHRpbmcg
bWFzayBpbiBjb2hlcmVudCBoZWFwIGRldiwgc2luY2UNCiAgZG1hX3NldF9tYXNrKCkgYWxyZWFk
eSB0cnVuY2F0ZXMgdG8gc3VwcG9ydGVkIG1hc2tzDQotIE1vdmVkIHN0cnVjdCBybWVtX2Fzc2ln
bmVkX2RldmljZSAocmQpIGxvZ2ljIHRvDQogIG9mX3Jlc2VydmVkX21lbV9kZXZpY2VfaW5pdF93
aXRoX21lbSgpIHRvIGFsbG93IGxpc3RpbmcgdGhlIGRldmljZQ0KLSBMaW5rIHRvIHYyOiBodHRw
czovL2xvcmUua2VybmVsLm9yZy9yLzIwMjYwMzAzLWI0LWRtYWJ1Zi1oZWFwLWNvaGVyZW50LXJt
ZW0tdjItMC02NWE0NjUzYjMzNzhAcmVkaGF0LmNvbQ0KDQpDaGFuZ2VzIGluIHYyOg0KLSBSZW1v
dmVkIGRtZW0gY2hhcmdpbmcgcGFydHMNCi0gTW92ZWQgY29oZXJlbnQgaGVhcCByZWdpc3Rlcmlu
ZyBsb2dpYyB0byBjb2hlcmVudC5jDQotIE1hZGUgaGVhcCBkZXZpY2UgYSBtZW1iZXIgb2Ygc3Ry
dWN0IGRtYV9oZWFwDQotIFNwbGl0IGRtYV9oZWFwX2FkZCBsb2dpYyBpbnRvIGNyZWF0ZS9yZWdp
c3RlciwgdG8gYmUgYWJsZSB0bw0KICBhY2Nlc3MgdGhlIHN0b3JlZCBoZWFwIGRldmljZSBiZWZv
cmUgcmVnaXN0ZXJlZC4NCi0gQXZvaWQgcGxhdGZvcm0gZGV2aWNlIGluIGZhdm91ciBvZiBoZWFw
IGRldmljZQ0KLSBBZGRlZCBhIHdyYXBwZXIgdG8gcm1lbSBkZXZpY2VfaW5pdCgpIG9wDQotIFN3
aXRjaGVkIGZyb20gbGF0ZV9pbml0Y2FsbCgpIHRvIG1vZHVsZV9pbml0KCkNCi0gTWFkZSB0aGUg
Y29oZXJlbnQgaGVhcCBkcml2ZXIgbW9kdWxhcg0KLSBMaW5rIHRvIHYxOiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9yLzIwMjYwMjI0LWI0LWRtYWJ1Zi1oZWFwLWNvaGVyZW50LXJtZW0tdjEtMS1k
ZmZlZjQzMjk4YWNAcmVkaGF0LmNvbQ0KDQotLS0NCkFsYmVydCBFc3RldmUgKDUpOg0KICAgICAg
ZG1hLWJ1ZjogZG1hLWhlYXA6IHNwbGl0IGRtYV9oZWFwX2FkZA0KICAgICAgb2ZfcmVzZXJ2ZWRf
bWVtOiBhZGQgYSBoZWxwZXIgZm9yIHJtZW0gZGV2aWNlX2luaXQgb3ANCiAgICAgIGRtYTogY29o
ZXJlbnQ6IHN0b3JlIHJlc2VydmVkIG1lbW9yeSBjb2hlcmVudCByZWdpb25zDQogICAgICBkbWEt
YnVmOiBoZWFwczogQWRkIENvaGVyZW50IGhlYXAgdG8gZG1hYnVmIGhlYXBzDQogICAgICBkbWEt
YnVmOiBoZWFwczogY29oZXJlbnQ6IFR1cm4gaGVhcCBpbnRvIGEgbW9kdWxlDQoNCkpvaG4gU3R1
bHR6ICgxKToNCiAgICAgIGRtYS1idWY6IGRtYS1oZWFwOiBLZWVwIHRyYWNrIG9mIHRoZSBoZWFw
IGRldmljZSBzdHJ1Y3QNCg0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jICAgICAgICAgICAg
fCAxMzggKysrKysrKysrLS0NCiBkcml2ZXJzL2RtYS1idWYvaGVhcHMvS2NvbmZpZyAgICAgICAg
IHwgICA5ICsNCiBkcml2ZXJzL2RtYS1idWYvaGVhcHMvTWFrZWZpbGUgICAgICAgIHwgICAxICsN
CiBkcml2ZXJzL2RtYS1idWYvaGVhcHMvY29oZXJlbnRfaGVhcC5jIHwgNDE3ICsrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysNCiBkcml2ZXJzL29mL29mX3Jlc2VydmVkX21lbS5jICAg
ICAgICAgIHwgIDY4ICsrKystLQ0KIGluY2x1ZGUvbGludXgvZG1hLWhlYXAuaCAgICAgICAgICAg
ICAgfCAgIDUgKw0KIGluY2x1ZGUvbGludXgvZG1hLW1hcC1vcHMuaCAgICAgICAgICAgfCAgIDcg
Kw0KIGluY2x1ZGUvbGludXgvb2ZfcmVzZXJ2ZWRfbWVtLmggICAgICAgfCAgIDggKw0KIGtlcm5l
bC9kbWEvY29oZXJlbnQuYyAgICAgICAgICAgICAgICAgfCAgMzQgKysrDQogOSBmaWxlcyBjaGFu
Z2VkLCA2NDAgaW5zZXJ0aW9ucygrKSwgNDcgZGVsZXRpb25zKC0pDQotLS0NCmJhc2UtY29tbWl0
OiA2ZGUyM2Y4MWE1ZTA4YmU4ZmJmNWU4ZDdlOWZlYmM3MmE1YjVmMjdmDQpjaGFuZ2UtaWQ6IDIw
MjYwMjIzLWI0LWRtYWJ1Zi1oZWFwLWNvaGVyZW50LXJtZW0tOTFmZDM5MjZhZmU5DQoNCkJlc3Qg
cmVnYXJkcywNCi0tIA0KQWxiZXJ0IEVzdGV2ZSA8YWVzdGV2ZUByZWRoYXQuY29tPg0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
