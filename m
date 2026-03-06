Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qIiDMmmuqmmLVQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 06 Mar 2026 11:37:29 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DF021EE37
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 06 Mar 2026 11:37:29 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1D97F3F98A
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 Mar 2026 10:37:28 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 29F254013F
	for <linaro-mm-sig@lists.linaro.org>; Fri,  6 Mar 2026 10:37:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=Su5ubc91;
	spf=pass (lists.linaro.org: domain of aesteve@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=aesteve@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1772793444;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OZ1uxUMfdvEVIiXLLllIOCQX5Y7WK3c/GBbiTWtJcUU=;
	b=Su5ubc91rHeZT6niiYHdxZ0K7yg5Hn+y41FJ1nUo8txbWLBQj18O7WoFyycn+REOugrjR8
	jflqV21/m8B89dKr92QHpJ5YM10ttYSn2f+uvrC8OuqGE1p+m0VwmZhASg8Z76BD5kMw7A
	xVI8vttB25QJyHbKDQbJPV17G1Lmqtw=
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-294-AAMy9kKQN4eRmXL4ZNJgAg-1; Fri,
 06 Mar 2026 05:37:22 -0500
X-MC-Unique: AAMy9kKQN4eRmXL4ZNJgAg-1
X-Mimecast-MFC-AGG-ID: AAMy9kKQN4eRmXL4ZNJgAg_1772793440
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 43CE718005B9;
	Fri,  6 Mar 2026 10:37:20 +0000 (UTC)
Received: from [192.168.1.153] (unknown [10.45.226.103])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7E1CA180058B;
	Fri,  6 Mar 2026 10:37:13 +0000 (UTC)
From: Albert Esteve <aesteve@redhat.com>
Date: Fri, 06 Mar 2026 11:36:33 +0100
MIME-Version: 1.0
Message-Id: <20260306-b4-dmabuf-heap-coherent-rmem-v3-2-3d00d36c9bc4@redhat.com>
References: <20260306-b4-dmabuf-heap-coherent-rmem-v3-0-3d00d36c9bc4@redhat.com>
In-Reply-To: <20260306-b4-dmabuf-heap-coherent-rmem-v3-0-3d00d36c9bc4@redhat.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>,
 Saravana Kannan <saravanak@kernel.org>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772793417; l=6927;
 i=aesteve@redhat.com; s=20260303; h=from:subject:message-id;
 bh=jnEWfPpzZhM9PT5/4IIyDdYQm5qsF5MEa9uiNa9/840=;
 b=Uq16kJks+H+M48RJxOWpGu8dbWraHuDz9VUhJlh3teNs+cTNDwHXuQtrqIYX0saef7gs9UfOD
 kjuetUfxw/5A+RGtAyaCBo6FmPDtCDuojyos6wX0xUOjdQR0OgL/nth
X-Developer-Key: i=aesteve@redhat.com; a=ed25519;
 pk=YSFz6sOHd2L45+Fr8DIvHTi6lSIjhLZ5T+rkxspJt1s=
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-MFC-PROC-ID: ZI7fBJEfcJSmGmPeXNskkYh_C7tEszY1Q2QjAnAJswM_1772793440
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
X-Spamd-Bar: ----
Message-ID-Hash: 6TVJ45PQT2BKZO2MSZRTCDUO4RVD3MUA
X-Message-ID-Hash: 6TVJ45PQT2BKZO2MSZRTCDUO4RVD3MUA
X-MailFrom: aesteve@redhat.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, devicetree@vger.kernel.org, Albert Esteve <aesteve@redhat.com>, mripard@redhat.com, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 2/6] dma-buf: dma-heap: split dma_heap_add
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6TVJ45PQT2BKZO2MSZRTCDUO4RVD3MUA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 71DF021EE37
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[redhat.com:-];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[aesteve@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.949];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

U3BsaXQgZG1hX2hlYXBfYWRkKCkgaW50byBjcmVhdGlvbiBhbmQgcmVnaXN0cmF0aW9uDQpwaGFz
ZXMgd2hpbGUgcHJlc2VydmluZyB0aGUgb3JkZXJpbmcgYmV0d2Vlbg0KY2Rldl9hZGQoKSBhbmQg
ZGV2aWNlX2FkZCgpLCBhbmQgZW5zdXJpbmcgYWxsDQpkZXZpY2UgZmllbGRzIGFyZSBpbml0aWFs
aXNlZC4NCg0KVGhpcyBsZXRzIGNhbGxlcnMgYnVpbGQgYSBoZWFwIGFuZCBpdHMgZGV2aWNlLA0K
YmluZCByZXNlcnZlZCBtZW1vcnksIGFuZCBjbGVhbmx5IHVud2luZCBvbiBmYWlsdXJlDQpiZWZv
cmUgdGhlIGhlYXAgaXMgcmVnaXN0ZXJlZC4gSXQgYWxzbyBhdm9pZHMgYSB3aW5kb3cNCndoZXJl
IHVzZXJzcGFjZSBjYW4gc2VlIGEgaGVhcCB0aGF0IGV4aXN0cyBidXQgaXNu4oCZdA0KZnVsbHkg
ZnVuY3Rpb25hbC4gVGhlIGNvaGVyZW50IGhlYXAgd2lsbCBuZWVkIHRoaXMgdG8NCmJpbmQgcm1l
bSB0byB0aGUgaGVhcCBkZXZpY2UgcHJpb3IgdG8gcmVnaXN0cmF0aW9uLg0KDQpTaWduZWQtb2Zm
LWJ5OiBBbGJlcnQgRXN0ZXZlIDxhZXN0ZXZlQHJlZGhhdC5jb20+DQotLS0NCiBkcml2ZXJzL2Rt
YS1idWYvZG1hLWhlYXAuYyB8IDEyNiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Ky0tLS0tLS0tLS0NCiBpbmNsdWRlL2xpbnV4L2RtYS1oZWFwLmggICB8ICAgMyArKw0KIDIgZmls
ZXMgY2hhbmdlZCwgMTAzIGluc2VydGlvbnMoKyksIDI2IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWhl
YXAuYw0KaW5kZXggMTEyNGQ2M2ViMTM5OC4uYmE4N2U1YWMxNmFlMiAxMDA2NDQNCi0tLSBhL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAu
Yw0KQEAgLTIzOCwxNSArMjM4LDMwIEBAIHN0cnVjdCBkZXZpY2UgKmRtYV9oZWFwX2dldF9kZXYo
c3RydWN0IGRtYV9oZWFwICpoZWFwKQ0KIH0NCiBFWFBPUlRfU1lNQk9MX05TX0dQTChkbWFfaGVh
cF9nZXRfZGV2LCAiRE1BX0JVRl9IRUFQIik7DQogDQorc3RhdGljIHZvaWQgZG1hX2hlYXBfZGV2
X3JlbGVhc2Uoc3RydWN0IGRldmljZSAqZGV2KQ0KK3sNCisJc3RydWN0IGRtYV9oZWFwICpoZWFw
Ow0KKw0KKwlwcl9kZWJ1ZygiaGVhcCBkZXZpY2U6ICclcyc6ICVzXG4iLCBkZXZfbmFtZShkZXYp
LCBfX2Z1bmNfXyk7DQorCWhlYXAgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsNCisJa2ZyZWUoaGVh
cC0+bmFtZSk7DQorCWtmcmVlKGhlYXApOw0KKwlrZnJlZShkZXYpOw0KK30NCisNCiAvKioNCi0g
KiBkbWFfaGVhcF9hZGQgLSBhZGRzIGEgaGVhcCB0byBkbWFidWYgaGVhcHMNCi0gKiBAZXhwX2lu
Zm86IGluZm9ybWF0aW9uIG5lZWRlZCB0byByZWdpc3RlciB0aGlzIGhlYXANCisgKiBkbWFfaGVh
cF9jcmVhdGUoKSAtIGFsbG9jYXRlIGFuZCBpbml0aWFsaXplIGEgaGVhcCBvYmplY3QNCisgKiBA
ZXhwX2luZm86IGluZm9ybWF0aW9uIG5lZWRlZCB0byBjcmVhdGUgYSBoZWFwDQorICoNCisgKiBD
cmVhdGVzIGEgaGVhcCBpbnN0YW5jZSBidXQgZG9lcyBub3QgcmVnaXN0ZXIgaXQgb3IgY3JlYXRl
IGRldmljZSBub2Rlcy4NCisgKiBVc2UgZG1hX2hlYXBfcmVnaXN0ZXIoKSB0byBtYWtlIGl0IHZp
c2libGUgdG8gdXNlcnNwYWNlLCBvcg0KKyAqIGRtYV9oZWFwX2Rlc3Ryb3koKSB0byByZWxlYXNl
IGl0Lg0KKyAqDQorICogUmV0dXJucyBhIGhlYXAgb24gc3VjY2VzcyBvciBFUlJfUFRSKC1lcnJu
bykgb24gZmFpbHVyZS4NCiAgKi8NCi1zdHJ1Y3QgZG1hX2hlYXAgKmRtYV9oZWFwX2FkZChjb25z
dCBzdHJ1Y3QgZG1hX2hlYXBfZXhwb3J0X2luZm8gKmV4cF9pbmZvKQ0KK3N0cnVjdCBkbWFfaGVh
cCAqZG1hX2hlYXBfY3JlYXRlKGNvbnN0IHN0cnVjdCBkbWFfaGVhcF9leHBvcnRfaW5mbyAqZXhw
X2luZm8pDQogew0KLQlzdHJ1Y3QgZG1hX2hlYXAgKmhlYXAsICpoLCAqZXJyX3JldDsNCi0JdW5z
aWduZWQgaW50IG1pbm9yOw0KLQlpbnQgcmV0Ow0KKwlzdHJ1Y3QgZG1hX2hlYXAgKmhlYXA7DQog
DQogCWlmICghZXhwX2luZm8tPm5hbWUgfHwgIXN0cmNtcChleHBfaW5mby0+bmFtZSwgIiIpKSB7
DQogCQlwcl9lcnIoImRtYV9oZWFwOiBDYW5ub3QgYWRkIGhlYXAgd2l0aG91dCBhIG5hbWVcbiIp
Ow0KQEAgLTI2NSwxMyArMjgwLDQxIEBAIHN0cnVjdCBkbWFfaGVhcCAqZG1hX2hlYXBfYWRkKGNv
bnN0IHN0cnVjdCBkbWFfaGVhcF9leHBvcnRfaW5mbyAqZXhwX2luZm8pDQogCWhlYXAtPm5hbWUg
PSBleHBfaW5mby0+bmFtZTsNCiAJaGVhcC0+b3BzID0gZXhwX2luZm8tPm9wczsNCiAJaGVhcC0+
cHJpdiA9IGV4cF9pbmZvLT5wcml2Ow0KKwloZWFwLT5oZWFwX2RldiA9IGt6YWxsb2Nfb2JqKCpo
ZWFwLT5oZWFwX2Rldik7DQorCWlmICghaGVhcC0+aGVhcF9kZXYpIHsNCisJCWtmcmVlKGhlYXAp
Ow0KKwkJcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7DQorCX0NCisNCisJZGV2aWNlX2luaXRpYWxp
emUoaGVhcC0+aGVhcF9kZXYpOw0KKwlkZXZfc2V0X2RydmRhdGEoaGVhcC0+aGVhcF9kZXYsIGhl
YXApOw0KKw0KKwlkZXZfc2V0X25hbWUoaGVhcC0+aGVhcF9kZXYsIGhlYXAtPm5hbWUpOw0KKwlo
ZWFwLT5oZWFwX2Rldi0+Y2xhc3MgPSBkbWFfaGVhcF9jbGFzczsNCisJaGVhcC0+aGVhcF9kZXYt
PnJlbGVhc2UgPSBkbWFfaGVhcF9kZXZfcmVsZWFzZTsNCisNCisJcmV0dXJuIGhlYXA7DQorfQ0K
K0VYUE9SVF9TWU1CT0xfTlNfR1BMKGRtYV9oZWFwX2NyZWF0ZSwgIkRNQV9CVUZfSEVBUCIpOw0K
Kw0KKy8qKg0KKyAqIGRtYV9oZWFwX3JlZ2lzdGVyKCkgLSByZWdpc3RlciBhIGhlYXAgd2l0aCB0
aGUgZG1hLWhlYXAgZnJhbWV3b3JrDQorICogQGhlYXA6IGhlYXAgaW5zdGFuY2UgY3JlYXRlZCB3
aXRoIGRtYV9oZWFwX2NyZWF0ZSgpDQorICoNCisgKiBSZWdpc3RlcnMgdGhlIGhlYXAsIGNyZWF0
aW5nIGl0cyBkZXZpY2Ugbm9kZSBhbmQgYWRkaW5nIGl0IHRvIHRoZSBoZWFwDQorICogbGlzdC4g
UmV0dXJucyAwIG9uIHN1Y2Nlc3Mgb3IgYSBuZWdhdGl2ZSBlcnJvciBjb2RlIG9uIGZhaWx1cmUu
DQorICovDQoraW50IGRtYV9oZWFwX3JlZ2lzdGVyKHN0cnVjdCBkbWFfaGVhcCAqaGVhcCkNCit7
DQorCXN0cnVjdCBkbWFfaGVhcCAqaDsNCisJdW5zaWduZWQgaW50IG1pbm9yOw0KKwlpbnQgcmV0
Ow0KIA0KIAkvKiBGaW5kIHVudXNlZCBtaW5vciBudW1iZXIgKi8NCiAJcmV0ID0geGFfYWxsb2Mo
JmRtYV9oZWFwX21pbm9ycywgJm1pbm9yLCBoZWFwLA0KIAkJICAgICAgIFhBX0xJTUlUKDAsIE5V
TV9IRUFQX01JTk9SUyAtIDEpLCBHRlBfS0VSTkVMKTsNCiAJaWYgKHJldCA8IDApIHsNCiAJCXBy
X2VycigiZG1hX2hlYXA6IFVuYWJsZSB0byBnZXQgbWlub3IgbnVtYmVyIGZvciBoZWFwXG4iKTsN
Ci0JCWVycl9yZXQgPSBFUlJfUFRSKHJldCk7DQogCQlnb3RvIGVycjA7DQogCX0NCiANCkBAIC0y
ODIsNDIgKzMyNSwzNCBAQCBzdHJ1Y3QgZG1hX2hlYXAgKmRtYV9oZWFwX2FkZChjb25zdCBzdHJ1
Y3QgZG1hX2hlYXBfZXhwb3J0X2luZm8gKmV4cF9pbmZvKQ0KIAlyZXQgPSBjZGV2X2FkZCgmaGVh
cC0+aGVhcF9jZGV2LCBoZWFwLT5oZWFwX2RldnQsIDEpOw0KIAlpZiAocmV0IDwgMCkgew0KIAkJ
cHJfZXJyKCJkbWFfaGVhcDogVW5hYmxlIHRvIGFkZCBjaGFyIGRldmljZVxuIik7DQotCQllcnJf
cmV0ID0gRVJSX1BUUihyZXQpOw0KIAkJZ290byBlcnIxOw0KIAl9DQogDQotCWhlYXAtPmhlYXBf
ZGV2ID0gZGV2aWNlX2NyZWF0ZShkbWFfaGVhcF9jbGFzcywNCi0JCQkJICAgICAgIE5VTEwsDQot
CQkJCSAgICAgICBoZWFwLT5oZWFwX2RldnQsDQotCQkJCSAgICAgICBOVUxMLA0KLQkJCQkgICAg
ICAgaGVhcC0+bmFtZSk7DQotCWlmIChJU19FUlIoaGVhcC0+aGVhcF9kZXYpKSB7DQotCQlwcl9l
cnIoImRtYV9oZWFwOiBVbmFibGUgdG8gY3JlYXRlIGRldmljZVxuIik7DQotCQllcnJfcmV0ID0g
RVJSX0NBU1QoaGVhcC0+aGVhcF9kZXYpOw0KKwloZWFwLT5oZWFwX2Rldi0+ZGV2dCA9IGhlYXAt
PmhlYXBfZGV2dDsNCisNCisJcmV0ID0gZGV2aWNlX2FkZChoZWFwLT5oZWFwX2Rldik7DQorCWlm
IChyZXQpIHsNCisJCXByX2VycigiZG1hX2hlYXA6IFVuYWJsZSB0byBhZGQgZGV2aWNlXG4iKTsN
CiAJCWdvdG8gZXJyMjsNCiAJfQ0KIA0KIAltdXRleF9sb2NrKCZoZWFwX2xpc3RfbG9jayk7DQog
CS8qIGNoZWNrIHRoZSBuYW1lIGlzIHVuaXF1ZSAqLw0KIAlsaXN0X2Zvcl9lYWNoX2VudHJ5KGgs
ICZoZWFwX2xpc3QsIGxpc3QpIHsNCi0JCWlmICghc3RyY21wKGgtPm5hbWUsIGV4cF9pbmZvLT5u
YW1lKSkgew0KKwkJaWYgKCFzdHJjbXAoaC0+bmFtZSwgaGVhcC0+bmFtZSkpIHsNCiAJCQltdXRl
eF91bmxvY2soJmhlYXBfbGlzdF9sb2NrKTsNCiAJCQlwcl9lcnIoImRtYV9oZWFwOiBBbHJlYWR5
IHJlZ2lzdGVyZWQgaGVhcCBuYW1lZCAlc1xuIiwNCi0JCQkgICAgICAgZXhwX2luZm8tPm5hbWUp
Ow0KLQkJCWVycl9yZXQgPSBFUlJfUFRSKC1FSU5WQUwpOw0KKwkJCSAgICAgICBoZWFwLT5uYW1l
KTsNCisJCQlyZXQgPSAtRUlOVkFMOw0KIAkJCWdvdG8gZXJyMzsNCiAJCX0NCiAJfQ0KIA0KLQkv
KiBNYWtlIHN1cmUgaXQgZG9lc24ndCBkaXNhcHBlYXIgb24gdXMgKi8NCi0JaGVhcC0+aGVhcF9k
ZXYgPSBnZXRfZGV2aWNlKGhlYXAtPmhlYXBfZGV2KTsNCi0NCi0NCiAJLyogQWRkIGhlYXAgdG8g
dGhlIGxpc3QgKi8NCiAJbGlzdF9hZGQoJmhlYXAtPmxpc3QsICZoZWFwX2xpc3QpOw0KIAltdXRl
eF91bmxvY2soJmhlYXBfbGlzdF9sb2NrKTsNCiANCi0JcmV0dXJuIGhlYXA7DQorCXJldHVybiAw
Ow0KIA0KIGVycjM6DQogCWRldmljZV9kZXN0cm95KGRtYV9oZWFwX2NsYXNzLCBoZWFwLT5oZWFw
X2RldnQpOw0KQEAgLTMyNiw4ICszNjEsNDcgQEAgc3RydWN0IGRtYV9oZWFwICpkbWFfaGVhcF9h
ZGQoY29uc3Qgc3RydWN0IGRtYV9oZWFwX2V4cG9ydF9pbmZvICpleHBfaW5mbykNCiBlcnIxOg0K
IAl4YV9lcmFzZSgmZG1hX2hlYXBfbWlub3JzLCBtaW5vcik7DQogZXJyMDoNCi0Ja2ZyZWUoaGVh
cCk7DQotCXJldHVybiBlcnJfcmV0Ow0KKwlkbWFfaGVhcF9kZXN0cm95KGhlYXApOw0KKwlyZXR1
cm4gcmV0Ow0KK30NCitFWFBPUlRfU1lNQk9MX05TX0dQTChkbWFfaGVhcF9yZWdpc3RlciwgIkRN
QV9CVUZfSEVBUCIpOw0KKw0KKy8qKg0KKyAqIGRtYV9oZWFwX2Rlc3Ryb3koKSAtIHJlbGVhc2Ug
YSBoZWFwIGNyZWF0ZWQgYnkgZG1hX2hlYXBfY3JlYXRlKCkNCisgKiBAaGVhcDogaGVhcCBpbnN0
YW5jZSB0byByZWxlYXNlDQorICoNCisgKiBEcm9wcyB0aGUgaGVhcCBkZXZpY2UgcmVmZXJlbmNl
OyB0aGUgaGVhcCBhbmQgaXRzIGRldmljZSBhcmUgZnJlZWQgaW4gdGhlDQorICogZGV2aWNlIHJl
bGVhc2UgcGF0aCB3aGVuIHRoZSBsYXN0IHJlZmVyZW5jZSBpcyBnb25lLg0KKyAqLw0KK3ZvaWQg
ZG1hX2hlYXBfZGVzdHJveShzdHJ1Y3QgZG1hX2hlYXAgKmhlYXApDQorew0KKwlwdXRfZGV2aWNl
KGhlYXAtPmhlYXBfZGV2KTsNCit9DQorRVhQT1JUX1NZTUJPTF9OU19HUEwoZG1hX2hlYXBfZGVz
dHJveSwgIkRNQV9CVUZfSEVBUCIpOw0KKw0KKy8qKg0KKyAqIGRtYV9oZWFwX2FkZCAtIGFkZHMg
YSBoZWFwIHRvIGRtYWJ1ZiBoZWFwcw0KKyAqIEBleHBfaW5mbzogaW5mb3JtYXRpb24gbmVlZGVk
IHRvIHJlZ2lzdGVyIHRoaXMgaGVhcA0KKyAqLw0KK3N0cnVjdCBkbWFfaGVhcCAqZG1hX2hlYXBf
YWRkKGNvbnN0IHN0cnVjdCBkbWFfaGVhcF9leHBvcnRfaW5mbyAqZXhwX2luZm8pDQorew0KKwlz
dHJ1Y3QgZG1hX2hlYXAgKmhlYXA7DQorCWludCByZXQ7DQorDQorCWhlYXAgPSBkbWFfaGVhcF9j
cmVhdGUoZXhwX2luZm8pOw0KKwlpZiAoSVNfRVJSKGhlYXApKSB7DQorCQlwcl9lcnIoImRtYV9o
ZWFwOiBmYWlsZWQgdG8gY3JlYXRlIGhlYXAgKCVsZClcbiIsIFBUUl9FUlIoaGVhcCkpOw0KKwkJ
cmV0dXJuIEVSUl9DQVNUKGhlYXApOw0KKwl9DQorDQorCXJldCA9IGRtYV9oZWFwX3JlZ2lzdGVy
KGhlYXApOw0KKwlpZiAocmV0KSB7DQorCQlwcl9lcnIoImRtYV9oZWFwOiBmYWlsZWQgdG8gcmVn
aXN0ZXIgaGVhcCAoJWQpXG4iLCByZXQpOw0KKwkJZG1hX2hlYXBfZGVzdHJveShoZWFwKTsNCisJ
CXJldHVybiBFUlJfUFRSKHJldCk7DQorCX0NCisNCisJcmV0dXJuIGhlYXA7DQogfQ0KIEVYUE9S
VF9TWU1CT0xfTlNfR1BMKGRtYV9oZWFwX2FkZCwgIkRNQV9CVUZfSEVBUCIpOw0KIA0KZGlmZiAt
LWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWhlYXAuaCBiL2luY2x1ZGUvbGludXgvZG1hLWhlYXAu
aA0KaW5kZXggNDkzMDg1ZTY5YjcwZS4uMWIwZWE0M2JhNjZjMyAxMDA2NDQNCi0tLSBhL2luY2x1
ZGUvbGludXgvZG1hLWhlYXAuaA0KKysrIGIvaW5jbHVkZS9saW51eC9kbWEtaGVhcC5oDQpAQCAt
NDYsNiArNDYsOSBAQCB2b2lkICpkbWFfaGVhcF9nZXRfZHJ2ZGF0YShzdHJ1Y3QgZG1hX2hlYXAg
KmhlYXApOw0KIGNvbnN0IGNoYXIgKmRtYV9oZWFwX2dldF9uYW1lKHN0cnVjdCBkbWFfaGVhcCAq
aGVhcCk7DQogc3RydWN0IGRldmljZSAqZG1hX2hlYXBfZ2V0X2RldihzdHJ1Y3QgZG1hX2hlYXAg
KmhlYXApOw0KIA0KK3N0cnVjdCBkbWFfaGVhcCAqZG1hX2hlYXBfY3JlYXRlKGNvbnN0IHN0cnVj
dCBkbWFfaGVhcF9leHBvcnRfaW5mbyAqZXhwX2luZm8pOw0KK2ludCBkbWFfaGVhcF9yZWdpc3Rl
cihzdHJ1Y3QgZG1hX2hlYXAgKmhlYXApOw0KK3ZvaWQgZG1hX2hlYXBfZGVzdHJveShzdHJ1Y3Qg
ZG1hX2hlYXAgKmhlYXApOw0KIHN0cnVjdCBkbWFfaGVhcCAqZG1hX2hlYXBfYWRkKGNvbnN0IHN0
cnVjdCBkbWFfaGVhcF9leHBvcnRfaW5mbyAqZXhwX2luZm8pOw0KIA0KIGV4dGVybiBib29sIG1l
bV9hY2NvdW50aW5nOw0KDQotLSANCjIuNTIuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
