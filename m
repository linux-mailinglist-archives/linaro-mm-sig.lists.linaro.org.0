Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 377D1752B2F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Jul 2023 21:48:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3ECFD43F1B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Jul 2023 19:48:23 +0000 (UTC)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by lists.linaro.org (Postfix) with ESMTPS id 87A563F095
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Jul 2023 19:48:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=BbKy+G8q;
	spf=none (lists.linaro.org: domain of ville.syrjala@linux.intel.com has no SPF policy when checking 192.55.52.93) smtp.mailfrom=ville.syrjala@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1689277686; x=1720813686;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=PSNuFJ2YvjV3jxMAZ+7/NMsIeHyXgIo7PD8ECkHz9l8=;
  b=BbKy+G8qbbJYh2zdUXfm9tZ1aleepgZYRUz2hYgYqKWO7XxVzXrDDtM3
   seBdZQRbA8pdDNRxwm9UTNQcfb/WFD7gc7N8hN7OLLzZ4a/v0cx4RlpYe
   Ly0Ci3T+inh79ADw7454oqGMe1wWUlH0RBLWUmcu5ORI10k9VK7GxGFUT
   ZVJaUyFRRzPnbU/Hhx5qmoULnAeiHQGMwkAGcmkHVdMT9ZULsJhPpeNV8
   /OZmo7UBT4vqn3fD86ZDGLXTWQ2vgdz1hioVTOEQl66ipaOBs16ctFLNg
   f3rL1WbdLwh81UZasP9U0s0S3iee6yCV9puBtOtaQDpEhRGi+vIZ+eXlK
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="362765421"
X-IronPort-AV: E=Sophos;i="6.01,203,1684825200";
   d="scan'208";a="362765421"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jul 2023 12:47:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="787588936"
X-IronPort-AV: E=Sophos;i="6.01,203,1684825200";
   d="scan'208";a="787588936"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
  by fmsmga008.fm.intel.com with SMTP; 13 Jul 2023 12:47:46 -0700
Received: by stinkbox (sSMTP sendmail emulation); Thu, 13 Jul 2023 22:47:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Thu, 13 Jul 2023 22:47:45 +0300
Message-Id: <20230713194745.1751-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
X-Spamd-Result: default: False [-4.30 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	RCVD_IN_DNSWL_HI(-0.50)[192.55.52.93:from];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.998];
	R_SPF_NA(0.00)[no SPF record];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:4983, ipnet:192.55.52.0/24, country:US];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_THREE(0.00)[3];
	URIBL_BLOCKED(0.00)[linaro.org:email,amd.com:email,intel.com:email,intel.com:dkim,mga11.intel.com:helo,mga11.intel.com:rdns];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 87A563F095
X-Spamd-Bar: ----
Message-ID-Hash: IBJACJSL652TVM5MWZ3R5JQWZXIXJTDF
X-Message-ID-Hash: IBJACJSL652TVM5MWZ3R5JQWZXIXJTDF
X-MailFrom: ville.syrjala@linux.intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: intel-gfx@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf/dma-resv: Stop leaking on krealloc() failure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IBJACJSL652TVM5MWZ3R5JQWZXIXJTDF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCg0K
Q3VycmVudGx5IGRtYV9yZXN2X2dldF9mZW5jZXMoKSB3aWxsIGxlYWsgdGhlIHByZXZpb3VzbHkN
CmFsbG9jYXRlZCBhcnJheSBpZiB0aGUgZmVuY2UgaXRlcmF0aW9uIGdvdCByZXN0YXJ0ZWQgYW5k
DQp0aGUga3JlYWxsb2NfYXJyYXkoKSBmYWlscy4NCg0KRnJlZSB0aGUgb2xkIGFycmF5IGJ5IGhh
bmQsIGFuZCBtYWtlIHN1cmUgd2Ugc3RpbGwgY2xlYXINCnRoZSByZXR1cm5lZCAqZmVuY2VzIHNv
IHRoZSBjYWxsZXIgd29uJ3QgZW5kIHVwIGFjY2Vzc2luZw0KZnJlZWQgbWVtb3J5LiBTb21lIChi
dXQgbm90IGFsbCkgb2YgdGhlIGNhbGxlcnMgb2YNCmRtYV9yZXN2X2dldF9mZW5jZXMoKSBzZWVt
IHRvIHN0aWxsIHRyYXdsIHRocm91Z2ggdGhlDQphcnJheSBldmVuIHdoZW4gZG1hX3Jlc3ZfZ2V0
X2ZlbmNlcygpIGZhaWxlZC4gQW5kIGxldCdzDQp6ZXJvIG91dCAqbnVtX2ZlbmNlcyBhcyB3ZWxs
IGZvciBnb29kIG1lYXN1cmUuDQoNCkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5h
cm8ub3JnPg0KQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4N
CkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCkNjOiBkcmktZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQpDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQpGaXhlczog
ZDNjODA2OThjOWY1ICgiZG1hLWJ1ZjogdXNlIG5ldyBpdGVyYXRvciBpbiBkbWFfcmVzdl9nZXRf
ZmVuY2VzIHYzIikNClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyB8IDEz
ICsrKysrKysrKy0tLS0NCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA0IGRlbGV0
aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgYi9kcml2
ZXJzL2RtYS1idWYvZG1hLXJlc3YuYw0KaW5kZXggYjZmNzFlYjAwODY2Li4zOGI0MTEwMzc4ZGUg
MTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYw0KKysrIGIvZHJpdmVycy9k
bWEtYnVmL2RtYS1yZXN2LmMNCkBAIC01NzEsNiArNTcxLDcgQEAgaW50IGRtYV9yZXN2X2dldF9m
ZW5jZXMoc3RydWN0IGRtYV9yZXN2ICpvYmosIGVudW0gZG1hX3Jlc3ZfdXNhZ2UgdXNhZ2UsDQog
CWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKCZjdXJzb3IsIGZlbmNlKSB7DQogDQog
CQlpZiAoZG1hX3Jlc3ZfaXRlcl9pc19yZXN0YXJ0ZWQoJmN1cnNvcikpIHsNCisJCQlzdHJ1Y3Qg
ZG1hX2ZlbmNlICoqbmV3X2ZlbmNlczsNCiAJCQl1bnNpZ25lZCBpbnQgY291bnQ7DQogDQogCQkJ
d2hpbGUgKCpudW1fZmVuY2VzKQ0KQEAgLTU3OSwxMyArNTgwLDE3IEBAIGludCBkbWFfcmVzdl9n
ZXRfZmVuY2VzKHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBlbnVtIGRtYV9yZXN2X3VzYWdlIHVzYWdl
LA0KIAkJCWNvdW50ID0gY3Vyc29yLm51bV9mZW5jZXMgKyAxOw0KIA0KIAkJCS8qIEV2ZW50dWFs
bHkgcmUtYWxsb2NhdGUgdGhlIGFycmF5ICovDQotCQkJKmZlbmNlcyA9IGtyZWFsbG9jX2FycmF5
KCpmZW5jZXMsIGNvdW50LA0KLQkJCQkJCSBzaXplb2Yodm9pZCAqKSwNCi0JCQkJCQkgR0ZQX0tF
Uk5FTCk7DQotCQkJaWYgKGNvdW50ICYmICEqZmVuY2VzKSB7DQorCQkJbmV3X2ZlbmNlcyA9IGty
ZWFsbG9jX2FycmF5KCpmZW5jZXMsIGNvdW50LA0KKwkJCQkJCSAgICBzaXplb2Yodm9pZCAqKSwN
CisJCQkJCQkgICAgR0ZQX0tFUk5FTCk7DQorCQkJaWYgKGNvdW50ICYmICFuZXdfZmVuY2VzKSB7
DQorCQkJCWtmcmVlKCpmZW5jZXMpOw0KKwkJCQkqZmVuY2VzID0gTlVMTDsNCisJCQkJKm51bV9m
ZW5jZXMgPSAwOw0KIAkJCQlkbWFfcmVzdl9pdGVyX2VuZCgmY3Vyc29yKTsNCiAJCQkJcmV0dXJu
IC1FTk9NRU07DQogCQkJfQ0KKwkJCSpmZW5jZXMgPSBuZXdfZmVuY2VzOw0KIAkJfQ0KIA0KIAkJ
KCpmZW5jZXMpWygqbnVtX2ZlbmNlcykrK10gPSBkbWFfZmVuY2VfZ2V0KGZlbmNlKTsNCi0tIA0K
Mi4zOS4zDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
