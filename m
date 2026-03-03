Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GNAQL0zVpmnHWgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 03 Mar 2026 13:34:20 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA3F1EF7EE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 03 Mar 2026 13:34:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1F6263F727
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Mar 2026 12:34:19 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id C6F843F727
	for <linaro-mm-sig@lists.linaro.org>; Tue,  3 Mar 2026 12:34:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=FU+1ke5T;
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (lists.linaro.org: domain of aesteve@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=aesteve@redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1772541256;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=U6xhLiQFL+mbcgfrby6QpV2yp3OnQ8VMri8wk6ood+Y=;
	b=FU+1ke5TUtOAVxArozDxDeBNMYoaGH7POrsOFamq1gsxePKKvvuwwBY8mWLgMZd9FTS7vr
	mG/QtY9AnGOhZ5k7JayBpp05f0c3CiZSH6Rqe14hTnivCqQJVK7CsaoOY4V0G6weKEh2fM
	aNO19pL3DovDWuKBNAcD03LOy5ePHUc=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-470-cN6t_CJ8MaSdHHuavs01GA-1; Tue,
 03 Mar 2026 07:34:13 -0500
X-MC-Unique: cN6t_CJ8MaSdHHuavs01GA-1
X-Mimecast-MFC-AGG-ID: cN6t_CJ8MaSdHHuavs01GA_1772541251
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 827351956089;
	Tue,  3 Mar 2026 12:34:10 +0000 (UTC)
Received: from [192.168.1.153] (unknown [10.44.32.231])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DBF6530001B9;
	Tue,  3 Mar 2026 12:34:03 +0000 (UTC)
From: Albert Esteve <aesteve@redhat.com>
Date: Tue, 03 Mar 2026 13:33:43 +0100
Message-Id: <20260303-b4-dmabuf-heap-coherent-rmem-v2-0-65a4653b3378@redhat.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/33NQQ7CIBCF4as0s3ZMmTaNuPIepgsKg7CgNICNp
 undxSZuXf5v8b0NMifPGa7NBolXn32ca9CpAe3U/GD0pjZQS0NL1OHUowlqelp0rBbU0XHiuWA
 KHFAKazpJg7IsoRJLYutfB38fazufS0zv420V3/UH9//hVaBAYy3bviN5UfqW2DhVzjoGGPd9/
 wAJXkgtyQAAAA==
X-Change-ID: 20260223-b4-dmabuf-heap-coherent-rmem-91fd3926afe9
To: Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>,
 Saravana Kannan <saravanak@kernel.org>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772541243; l=2748;
 i=aesteve@redhat.com; s=20260303; h=from:subject:message-id;
 bh=IPXiwZtCc7P08ZgUjvcnSviyFkXkojb59Nxf4/tXsiE=;
 b=UoJm8cOUwDbUZaGCu/6/A2ZEkCDOViFBfczvAM5knasQJRy7s18G7gsVP6zwFOy1FBwWL/nXj
 M/F79L4YdOoCAv3QZE2oXpL/jmdtEbuyArFvtu7fbTfA4XBopk6UHWV
X-Developer-Key: i=aesteve@redhat.com; a=ed25519;
 pk=YSFz6sOHd2L45+Fr8DIvHTi6lSIjhLZ5T+rkxspJt1s=
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-MFC-PROC-ID: NRCOq4MyddTohWCsehgwJrcAdyqGYserVzbyleOh27A_1772541251
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
X-Spamd-Bar: ------
Message-ID-Hash: CI3O2QC2QU4FW7ZJFHKYTHWLLB5A6CEJ
X-Message-ID-Hash: CI3O2QC2QU4FW7ZJFHKYTHWLLB5A6CEJ
X-MailFrom: aesteve@redhat.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, devicetree@vger.kernel.org, Albert Esteve <aesteve@redhat.com>, echanude@redhat.com, mripard@redhat.com, John Stultz <john.stultz@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 0/6] dma-buf: heaps: add coherent reserved-memory heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CI3O2QC2QU4FW7ZJFHKYTHWLLB5A6CEJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 4AA3F1EF7EE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	URIBL_MULTI_FAIL(0.00)[lists.linaro.org:server fail,linaro.org:server fail];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[redhat.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[aesteve@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.950];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Action: no action

VGhpcyBwYXRjaCBpbnRyb2R1Y2VzIGEgbmV3IGhlYXAgZHJpdmVyIHRvIGV4cG9zZSBEVCBub27i
gJFyZXVzYWJsZQ0KInNoYXJlZC1kbWEtcG9vbCIgY29oZXJlbnQgcmVnaW9ucyBhcyBkbWEtYnVm
IGhlYXBzLCBzbyB1c2Vyc3BhY2UgY2FuDQphbGxvY2F0ZSBidWZmZXJzIGZyb20gZWFjaCByZXNl
cnZlZCwgbmFtZWQgcmVnaW9uLg0KDQpCZWNhdXNlIHRoZXNlIHJlZ2lvbnMgYXJlIGRldmljZeKA
kWRlcGVuZGVudCwgZWFjaCBoZWFwIGluc3RhbmNlIGJpbmRzIGENCmhlYXAgZGV2aWNlIHRvIGl0
cyByZXNlcnZlZOKAkW1lbSByZWdpb24gdmlhIGEgbmV3bHkgaW50cm9kdWNlZCBoZWxwZXINCmZ1
bmN0aW9uIC1uYW1lbHksIG9mX3Jlc2VydmVkX21lbV9kZXZpY2VfaW5pdF93aXRoX21lbSgpLSBz
byBjb2hlcmVudA0KYWxsb2NhdGlvbnMgdXNlIHRoZSBjb3JyZWN0IGRldi0+ZG1hX21lbS4NCg0K
Q2hhcmdpbmcgdG8gY2dyb3VwcyBmb3IgdGhlc2UgYnVmZmVycyBpcyBpbnRlbnRpb25hbGx5IGxl
ZnQgb3V0IHRvIGtlZXANCnJldmlldyBmb2N1c2VkIG9uIHRoZSBuZXcgaGVhcDsgSSBwbGFuIHRv
IGZvbGxvdyB1cCBiYXNlZCBvbiBFcmlj4oCZcyBbMV0NCmFuZCBNYXhpbWXigJlzIFsyXSB3b3Jr
IG9uIGRtZW0gY2hhcmdpbmcgZnJvbSB1c2Vyc3BhY2UuDQoNClRoaXMgc2VyaWVzIGFsc28gbWFr
ZXMgdGhlIG5ldyBoZWFwIGRyaXZlciBtb2R1bGFyLCBpbiBsaW5lIHdpdGggdGhlIENNQQ0KaGVh
cCBjaGFuZ2UgaW4gWzNdLg0KDQpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYw
MjE4LWRtYWJ1Zi1oZWFwLWNtYS1kbWVtLXYyLTAtYjI0OTg4NmZiN2IyQHJlZGhhdC5jb20vDQpb
Ml0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUwMzEwLWRtZW0tY2dyb3Vwcy12MS0w
LTI5ODRjMWJjOTMxMkBrZXJuZWwub3JnLw0KWzNdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2Fs
bC8yMDI2MDMwMy1kbWEtYnVmLWhlYXBzLWFzLW1vZHVsZXMtdjMtMC0yNDM0NDgxMmM3MDdAa2Vy
bmVsLm9yZy8NCg0KU2lnbmVkLW9mZi1ieTogQWxiZXJ0IEVzdGV2ZSA8YWVzdGV2ZUByZWRoYXQu
Y29tPg0KLS0tDQpDaGFuZ2VzIGluIHYyOg0KLSBSZW1vdmVkIGRtZW0gY2hhcmdpbmcgcGFydHMN
Ci0gTW92ZWQgY29oZXJlbnQgaGVhcCByZWdpc3RlcmluZyBsb2dpYyB0byBjb2hlcmVudC5jDQot
IE1hZGUgaGVhcCBkZXZpY2UgYSBtZW1iZXIgb2Ygc3RydWN0IGRtYV9oZWFwDQotIFNwbGl0IGRt
YV9oZWFwX2FkZCBsb2dpYyBpbnRvIGNyZWF0ZS9yZWdpc3RlciwgdG8gYmUgYWJsZSB0bw0KICBh
Y2Nlc3MgdGhlIHN0b3JlZCBoZWFwIGRldmljZSBiZWZvcmUgcmVnaXN0ZXJlZC4NCi0gQXZvaWQg
cGxhdGZvcm0gZGV2aWNlIGluIGZhdm91ciBvZiBoZWFwIGRldmljZQ0KLSBBZGRlZCBhIHdyYXBw
ZXIgdG8gcm1lbSBkZXZpY2VfaW5pdCgpIG9wDQotIFN3aXRjaGVkIGZyb20gbGF0ZV9pbml0Y2Fs
bCgpIHRvIG1vZHVsZV9pbml0KCkNCi0gTWFkZSB0aGUgY29oZXJlbnQgaGVhcCBkcml2ZXIgbW9k
dWxhcg0KLSBMaW5rIHRvIHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjYwMjI0LWI0
LWRtYWJ1Zi1oZWFwLWNvaGVyZW50LXJtZW0tdjEtMS1kZmZlZjQzMjk4YWNAcmVkaGF0LmNvbQ0K
DQotLS0NCkFsYmVydCBFc3RldmUgKDUpOg0KICAgICAgZG1hLWJ1ZjogZG1hLWhlYXA6IHNwbGl0
IGRtYV9oZWFwX2FkZA0KICAgICAgb2ZfcmVzZXJ2ZWRfbWVtOiBhZGQgYSBoZWxwZXIgZm9yIHJt
ZW0gZGV2aWNlX2luaXQgb3ANCiAgICAgIGRtYS1idWY6IGhlYXBzOiBBZGQgQ29oZXJlbnQgaGVh
cCB0byBkbWFidWYgaGVhcHMNCiAgICAgIGRtYTogY29oZXJlbnQ6IHJlZ2lzdGVyIHRvIGNvaGVy
ZW50IGhlYXANCiAgICAgIGRtYS1idWY6IGhlYXBzOiBjb2hlcmVudDogVHVybiBoZWFwIGludG8g
YSBtb2R1bGUNCg0KSm9obiBTdHVsdHogKDEpOg0KICAgICAgZG1hLWJ1ZjogZG1hLWhlYXA6IEtl
ZXAgdHJhY2sgb2YgdGhlIGhlYXAgZGV2aWNlIHN0cnVjdA0KDQogZHJpdmVycy9kbWEtYnVmL2Rt
YS1oZWFwLmMgICAgICAgICAgICB8IDEzOCArKysrKysrKystLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9o
ZWFwcy9LY29uZmlnICAgICAgICAgfCAgIDkgKw0KIGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9NYWtl
ZmlsZSAgICAgICAgfCAgIDEgKw0KIGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9jb2hlcmVudF9oZWFw
LmMgfCA0MjkgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0KIGRyaXZlcnMvb2Yv
b2ZfcmVzZXJ2ZWRfbWVtLmMgICAgICAgICAgfCAgMjcgKystDQogaW5jbHVkZS9saW51eC9kbWEt
aGVhcC5oICAgICAgICAgICAgICB8ICAxNiArKw0KIGluY2x1ZGUvbGludXgvZG1hLW1hcC1vcHMu
aCAgICAgICAgICAgfCAgIDcgKw0KIGluY2x1ZGUvbGludXgvb2ZfcmVzZXJ2ZWRfbWVtLmggICAg
ICAgfCAgIDggKw0KIGtlcm5lbC9kbWEvY29oZXJlbnQuYyAgICAgICAgICAgICAgICAgfCAgMzQg
KysrDQogOSBmaWxlcyBjaGFuZ2VkLCA2NDIgaW5zZXJ0aW9ucygrKSwgMjcgZGVsZXRpb25zKC0p
DQotLS0NCmJhc2UtY29tbWl0OiA2ZGUyM2Y4MWE1ZTA4YmU4ZmJmNWU4ZDdlOWZlYmM3MmE1YjVm
MjdmDQpjaGFuZ2UtaWQ6IDIwMjYwMjIzLWI0LWRtYWJ1Zi1oZWFwLWNvaGVyZW50LXJtZW0tOTFm
ZDM5MjZhZmU5DQoNCkJlc3QgcmVnYXJkcywNCi0tIA0KQWxiZXJ0IEVzdGV2ZSA8YWVzdGV2ZUBy
ZWRoYXQuY29tPg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
