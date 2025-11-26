Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +JaSOLAA4Wk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:30:56 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD63410D57
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:30:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B69FA43F1F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:30:55 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 3A3F23F69B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Nov 2025 13:20:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=ixu2iZTZ;
	spf=pass (lists.linaro.org: domain of phasta@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=phasta@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id AAFEF44381;
	Wed, 26 Nov 2025 13:20:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 732D8C116B1;
	Wed, 26 Nov 2025 13:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764163240;
	bh=2pw/MJl6LY/oCnTL3+ZydHGGLHEVdvEQCODhNg8b1NQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ixu2iZTZtYLH17YMkWe3wgu1khWIu1Btj2ZXZ0yppvuSfVrDVJwz4hvsSE5lbhvLv
	 v+ExMAHWV1q4rJG+OCiWwImm3OoF+GHOxZCug5HdXMdNdSxwXRx+cQJ3rHZMTZ/vLH
	 2nWKlIQOPYQfdFZ3Wu8eot2tUTBqKV7TKLo+zR2DwReVr051qui5adYQ12uI9mEjmM
	 8CcZyLymsWhgqA7HdvfILFC+ahuAbLzJLvxgL1mlD1MUhHZUMNCf/hHgiqmZEIe+Io
	 gEuLpALwLvhJStMxBEKR4CYPvoexnFADl4gwHHolqjWk7HyVtuXg3BuMihjZi8waxF
	 Ww+QKUEf7OKaw==
From: Philipp Stanner <phasta@kernel.org>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	Gustavo Padovan <gustavo@padovan.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Felix Kuehling <Felix.Kuehling@amd.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Tvrtko Ursulin <tursulin@ursulin.net>,
	Huang Rui <ray.huang@amd.com>,
	Matthew Auld <matthew.auld@intel.com>,
	Matthew Brost <matthew.brost@intel.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Lucas De Marchi <lucas.demarchi@intel.com>,
	=?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Wed, 26 Nov 2025 14:19:15 +0100
Message-ID: <20251126131914.149445-8-phasta@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251126131914.149445-2-phasta@kernel.org>
References: <20251126131914.149445-2-phasta@kernel.org>
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: phasta@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NN7YWDEGOHEUXNBRTDBH7Y22ZHDYEALQ
X-Message-ID-Hash: NN7YWDEGOHEUXNBRTDBH7Y22ZHDYEALQ
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:05 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, rust-for-linux@vger.kernel.org, Philipp Stanner <phasta@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 6/6] dma-buf/dma-fence: Remove return code of signaling-functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NN7YWDEGOHEUXNBRTDBH7Y22ZHDYEALQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	DATE_IN_PAST(1.00)[3386];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_TO(0.00)[linaro.org,padovan.org,amd.com,gmail.com,ffwll.ch,linux.intel.com,intel.com,ursulin.net,kernel.org,suse.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,amd.com:email]
X-Rspamd-Queue-Id: AAD63410D57
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

QWxsIGZ1bmN0aW9ucyB1c2VkIGZvciBzaWduYWxpbmcgYSBmZW5jZSByZXR1cm4gYW4gZXJyb3Ig
Y29kZSB3aG9zZSBzb2xlDQpwdXJwb3NlIGlzIHRvIHRlbGwgd2hldGhlciBhIGZlbmNlIHdhcyBh
bHJlYWR5IHNpZ25hbGVkLg0KDQpUaGlzIGlzIHJhY3kgYW5kIGhhcyBiZWVuIHVzZWQgYnkgYWxt
b3N0IG5vIHBhcnR5IGluIHRoZSBrZXJuZWwsIGFuZCB0aGUNCmZldyB1c2VycyBoYXZlIGJlZW4g
cmVtb3ZlZCBpbiBwcmVjZWRpbmcgY2xlYW51cCBjb21taXRzLg0KDQpUdXJuIGFsbCBzaWduYWxp
bmctZnVuY3Rpb25zIGludG8gdm9pZC1mdW5jdGlvbnMuDQoNClN1Z2dlc3RlZC1ieTogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KU2lnbmVkLW9mZi1ieTogUGhp
bGlwcCBTdGFubmVyIDxwaGFzdGFAa2VybmVsLm9yZz4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9k
bWEtZmVuY2UuYyB8IDQwICsrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCiBp
bmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oICAgfCAgOSArKysrLS0tLS0NCiAyIGZpbGVzIGNoYW5n
ZWQsIDE0IGluc2VydGlvbnMoKyksIDM1IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQpp
bmRleCAyNTExN2E5MDY4NDYuLmJlZDhkMGMyNzIxNyAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtZmVuY2UuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQpAQCAt
MzYwLDExICszNjAsOCBAQCB2b2lkIF9fZG1hX2ZlbmNlX21pZ2h0X3dhaXQodm9pZCkNCiAgKg0K
ICAqIFVubGlrZSBkbWFfZmVuY2Vfc2lnbmFsX3RpbWVzdGFtcCgpLCB0aGlzIGZ1bmN0aW9uIG11
c3QgYmUgY2FsbGVkIHdpdGgNCiAgKiAmZG1hX2ZlbmNlLmxvY2sgaGVsZC4NCi0gKg0KLSAqIFJl
dHVybnMgMCBvbiBzdWNjZXNzIGFuZCBhIG5lZ2F0aXZlIGVycm9yIHZhbHVlIHdoZW4gQGZlbmNl
IGhhcyBiZWVuDQotICogc2lnbmFsbGVkIGFscmVhZHkuDQogICovDQotaW50IGRtYV9mZW5jZV9z
aWduYWxfdGltZXN0YW1wX2xvY2tlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwNCit2b2lkIGRt
YV9mZW5jZV9zaWduYWxfdGltZXN0YW1wX2xvY2tlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwN
CiAJCQkJICAgICAga3RpbWVfdCB0aW1lc3RhbXApDQogew0KIAlzdHJ1Y3QgZG1hX2ZlbmNlX2Ni
ICpjdXIsICp0bXA7DQpAQCAtMzczLDcgKzM3MCw3IEBAIGludCBkbWFfZmVuY2Vfc2lnbmFsX3Rp
bWVzdGFtcF9sb2NrZWQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsDQogCWxvY2tkZXBfYXNzZXJ0
X2hlbGQoZmVuY2UtPmxvY2spOw0KIA0KIAlpZiAodW5saWtlbHkoZG1hX2ZlbmNlX3Rlc3Rfc2ln
bmFsZWRfZmxhZyhmZW5jZSkpKQ0KLQkJcmV0dXJuIC1FSU5WQUw7DQorCQlyZXR1cm47DQogDQog
CS8qIFN0YXNoIHRoZSBjYl9saXN0IGJlZm9yZSByZXBsYWNpbmcgaXQgd2l0aCB0aGUgdGltZXN0
YW1wICovDQogCWxpc3RfcmVwbGFjZSgmZmVuY2UtPmNiX2xpc3QsICZjYl9saXN0KTsNCkBAIC0z
ODYsOCArMzgzLDYgQEAgaW50IGRtYV9mZW5jZV9zaWduYWxfdGltZXN0YW1wX2xvY2tlZChzdHJ1
Y3QgZG1hX2ZlbmNlICpmZW5jZSwNCiAJCUlOSVRfTElTVF9IRUFEKCZjdXItPm5vZGUpOw0KIAkJ
Y3VyLT5mdW5jKGZlbmNlLCBjdXIpOw0KIAl9DQotDQotCXJldHVybiAwOw0KIH0NCiBFWFBPUlRf
U1lNQk9MKGRtYV9mZW5jZV9zaWduYWxfdGltZXN0YW1wX2xvY2tlZCk7DQogDQpAQCAtNDAyLDIz
ICszOTcsMTcgQEAgRVhQT1JUX1NZTUJPTChkbWFfZmVuY2Vfc2lnbmFsX3RpbWVzdGFtcF9sb2Nr
ZWQpOw0KICAqIGNhbiBvbmx5IGdvIGZyb20gdGhlIHVuc2lnbmFsZWQgdG8gdGhlIHNpZ25hbGVk
IHN0YXRlIGFuZCBub3QgYmFjaywgaXQgd2lsbA0KICAqIG9ubHkgYmUgZWZmZWN0aXZlIHRoZSBm
aXJzdCB0aW1lLiBTZXQgdGhlIHRpbWVzdGFtcCBwcm92aWRlZCBhcyB0aGUgZmVuY2UNCiAgKiBz
aWduYWwgdGltZXN0YW1wLg0KLSAqDQotICogUmV0dXJucyAwIG9uIHN1Y2Nlc3MgYW5kIGEgbmVn
YXRpdmUgZXJyb3IgdmFsdWUgd2hlbiBAZmVuY2UgaGFzIGJlZW4NCi0gKiBzaWduYWxsZWQgYWxy
ZWFkeS4NCiAgKi8NCi1pbnQgZG1hX2ZlbmNlX3NpZ25hbF90aW1lc3RhbXAoc3RydWN0IGRtYV9m
ZW5jZSAqZmVuY2UsIGt0aW1lX3QgdGltZXN0YW1wKQ0KK3ZvaWQgZG1hX2ZlbmNlX3NpZ25hbF90
aW1lc3RhbXAoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGt0aW1lX3QgdGltZXN0YW1wKQ0KIHsN
CiAJdW5zaWduZWQgbG9uZyBmbGFnczsNCi0JaW50IHJldDsNCiANCiAJaWYgKFdBUk5fT04oIWZl
bmNlKSkNCi0JCXJldHVybiAtRUlOVkFMOw0KKwkJcmV0dXJuOw0KIA0KIAlzcGluX2xvY2tfaXJx
c2F2ZShmZW5jZS0+bG9jaywgZmxhZ3MpOw0KLQlyZXQgPSBkbWFfZmVuY2Vfc2lnbmFsX3RpbWVz
dGFtcF9sb2NrZWQoZmVuY2UsIHRpbWVzdGFtcCk7DQorCWRtYV9mZW5jZV9zaWduYWxfdGltZXN0
YW1wX2xvY2tlZChmZW5jZSwgdGltZXN0YW1wKTsNCiAJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZShm
ZW5jZS0+bG9jaywgZmxhZ3MpOw0KLQ0KLQlyZXR1cm4gcmV0Ow0KIH0NCiBFWFBPUlRfU1lNQk9M
KGRtYV9mZW5jZV9zaWduYWxfdGltZXN0YW1wKTsNCiANCkBAIC00MzQsMTMgKzQyMywxMCBAQCBF
WFBPUlRfU1lNQk9MKGRtYV9mZW5jZV9zaWduYWxfdGltZXN0YW1wKTsNCiAgKg0KICAqIFVubGlr
ZSBkbWFfZmVuY2Vfc2lnbmFsKCksIHRoaXMgZnVuY3Rpb24gbXVzdCBiZSBjYWxsZWQgd2l0aCAm
ZG1hX2ZlbmNlLmxvY2sNCiAgKiBoZWxkLg0KLSAqDQotICogUmV0dXJucyAwIG9uIHN1Y2Nlc3Mg
YW5kIGEgbmVnYXRpdmUgZXJyb3IgdmFsdWUgd2hlbiBAZmVuY2UgaGFzIGJlZW4NCi0gKiBzaWdu
YWxsZWQgYWxyZWFkeS4NCiAgKi8NCi1pbnQgZG1hX2ZlbmNlX3NpZ25hbF9sb2NrZWQoc3RydWN0
IGRtYV9mZW5jZSAqZmVuY2UpDQordm9pZCBkbWFfZmVuY2Vfc2lnbmFsX2xvY2tlZChzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmZW5jZSkNCiB7DQotCXJldHVybiBkbWFfZmVuY2Vfc2lnbmFsX3RpbWVzdGFt
cF9sb2NrZWQoZmVuY2UsIGt0aW1lX2dldCgpKTsNCisJZG1hX2ZlbmNlX3NpZ25hbF90aW1lc3Rh
bXBfbG9ja2VkKGZlbmNlLCBrdGltZV9nZXQoKSk7DQogfQ0KIEVYUE9SVF9TWU1CT0woZG1hX2Zl
bmNlX3NpZ25hbF9sb2NrZWQpOw0KIA0KQEAgLTQ1MywyOCArNDM5LDIyIEBAIEVYUE9SVF9TWU1C
T0woZG1hX2ZlbmNlX3NpZ25hbF9sb2NrZWQpOw0KICAqIGRtYV9mZW5jZV9hZGRfY2FsbGJhY2so
KS4gQ2FuIGJlIGNhbGxlZCBtdWx0aXBsZSB0aW1lcywgYnV0IHNpbmNlIGEgZmVuY2UNCiAgKiBj
YW4gb25seSBnbyBmcm9tIHRoZSB1bnNpZ25hbGVkIHRvIHRoZSBzaWduYWxlZCBzdGF0ZSBhbmQg
bm90IGJhY2ssIGl0IHdpbGwNCiAgKiBvbmx5IGJlIGVmZmVjdGl2ZSB0aGUgZmlyc3QgdGltZS4N
Ci0gKg0KLSAqIFJldHVybnMgMCBvbiBzdWNjZXNzIGFuZCBhIG5lZ2F0aXZlIGVycm9yIHZhbHVl
IHdoZW4gQGZlbmNlIGhhcyBiZWVuDQotICogc2lnbmFsbGVkIGFscmVhZHkuDQogICovDQotaW50
IGRtYV9mZW5jZV9zaWduYWwoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQordm9pZCBkbWFfZmVu
Y2Vfc2lnbmFsKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KIHsNCiAJdW5zaWduZWQgbG9uZyBm
bGFnczsNCi0JaW50IHJldDsNCiAJYm9vbCB0bXA7DQogDQogCWlmIChXQVJOX09OKCFmZW5jZSkp
DQotCQlyZXR1cm4gLUVJTlZBTDsNCisJCXJldHVybjsNCiANCiAJdG1wID0gZG1hX2ZlbmNlX2Jl
Z2luX3NpZ25hbGxpbmcoKTsNCiANCiAJc3Bpbl9sb2NrX2lycXNhdmUoZmVuY2UtPmxvY2ssIGZs
YWdzKTsNCi0JcmV0ID0gZG1hX2ZlbmNlX3NpZ25hbF90aW1lc3RhbXBfbG9ja2VkKGZlbmNlLCBr
dGltZV9nZXQoKSk7DQorCWRtYV9mZW5jZV9zaWduYWxfdGltZXN0YW1wX2xvY2tlZChmZW5jZSwg
a3RpbWVfZ2V0KCkpOw0KIAlzcGluX3VubG9ja19pcnFyZXN0b3JlKGZlbmNlLT5sb2NrLCBmbGFn
cyk7DQogDQogCWRtYV9mZW5jZV9lbmRfc2lnbmFsbGluZyh0bXApOw0KLQ0KLQlyZXR1cm4gcmV0
Ow0KIH0NCiBFWFBPUlRfU1lNQk9MKGRtYV9mZW5jZV9zaWduYWwpOw0KIA0KZGlmZiAtLWdpdCBh
L2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQpp
bmRleCAxOTk3MmY1ZDE3NmYuLjE4OGY3NjQxMDUwZiAxMDA2NDQNCi0tLSBhL2luY2x1ZGUvbGlu
dXgvZG1hLWZlbmNlLmgNCisrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCkBAIC0zNjQs
MTEgKzM2NCwxMCBAQCBzdGF0aWMgaW5saW5lIHZvaWQgZG1hX2ZlbmNlX2VuZF9zaWduYWxsaW5n
KGJvb2wgY29va2llKSB7fQ0KIHN0YXRpYyBpbmxpbmUgdm9pZCBfX2RtYV9mZW5jZV9taWdodF93
YWl0KHZvaWQpIHt9DQogI2VuZGlmDQogDQotaW50IGRtYV9mZW5jZV9zaWduYWwoc3RydWN0IGRt
YV9mZW5jZSAqZmVuY2UpOw0KLWludCBkbWFfZmVuY2Vfc2lnbmFsX2xvY2tlZChzdHJ1Y3QgZG1h
X2ZlbmNlICpmZW5jZSk7DQotaW50IGRtYV9mZW5jZV9zaWduYWxfdGltZXN0YW1wKHN0cnVjdCBk
bWFfZmVuY2UgKmZlbmNlLCBrdGltZV90IHRpbWVzdGFtcCk7DQotaW50IGRtYV9mZW5jZV9zaWdu
YWxfdGltZXN0YW1wX2xvY2tlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwNCi0JCQkJICAgICAg
a3RpbWVfdCB0aW1lc3RhbXApOw0KK3ZvaWQgZG1hX2ZlbmNlX3NpZ25hbChzdHJ1Y3QgZG1hX2Zl
bmNlICpmZW5jZSk7DQordm9pZCBkbWFfZmVuY2Vfc2lnbmFsX2xvY2tlZChzdHJ1Y3QgZG1hX2Zl
bmNlICpmZW5jZSk7DQordm9pZCBkbWFfZmVuY2Vfc2lnbmFsX3RpbWVzdGFtcChzdHJ1Y3QgZG1h
X2ZlbmNlICpmZW5jZSwga3RpbWVfdCB0aW1lc3RhbXApOw0KK3ZvaWQgZG1hX2ZlbmNlX3NpZ25h
bF90aW1lc3RhbXBfbG9ja2VkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBrdGltZV90IHRpbWVz
dGFtcCk7DQogc2lnbmVkIGxvbmcgZG1hX2ZlbmNlX2RlZmF1bHRfd2FpdChzdHJ1Y3QgZG1hX2Zl
bmNlICpmZW5jZSwNCiAJCQkJICAgYm9vbCBpbnRyLCBzaWduZWQgbG9uZyB0aW1lb3V0KTsNCiBp
bnQgZG1hX2ZlbmNlX2FkZF9jYWxsYmFjayhzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwNCi0tIA0K
Mi40OS4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
