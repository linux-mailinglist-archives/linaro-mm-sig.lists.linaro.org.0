Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FCFF6F5609
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 12:24:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8C2DA3F952
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 10:24:50 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by lists.linaro.org (Postfix) with ESMTPS id B2D474423B
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Apr 2023 12:53:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=lDyAnuwQ;
	spf=none (lists.linaro.org: domain of thomas.hellstrom@linux.intel.com has no SPF policy when checking 192.55.52.120) smtp.mailfrom=thomas.hellstrom@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1682686426; x=1714222426;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=U5O4Ny06a9ptqT/D21qH2jYM8IlJmI+cyOU0Pbe/WQM=;
  b=lDyAnuwQspyPPjWqE4nbaMaChjSLBGhktjtJIoLGRBDAAYD7+VInAKZE
   9FiGGc9paWxUCuneqOxhWXcSO/REox2tAn33kUrXBYc6YdT7KpIPvE8EE
   43TbiAoej4dltqfCYjd8Z9xJ3F0VzvqVrgpK21DijuOmb5WAGZymef9/A
   Ys0DRCG1kaSJIIZMQezTXmLmagFK0ytAP7DUwhMamaU1WRAPxOd1KjP2E
   AOO67aRzWaaOEaKALgDgtID5W3RTzgbC6ZVVW4EB2jMLYblOPVu3tYlXM
   C6BYCgNecoB81PHSEJOIa0FxVRjDmNY6f/ZwXl+U+AzDi8LJQWuKjZ2sF
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="346507234"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200";
   d="scan'208";a="346507234"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Apr 2023 05:53:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="1024593659"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200";
   d="scan'208";a="1024593659"
Received: from kdobkakr-mobl1.ger.corp.intel.com (HELO thellstr-mobl1.intel.com) ([10.249.254.45])
  by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Apr 2023 05:53:43 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Fri, 28 Apr 2023 14:52:32 +0200
Message-Id: <20230428125233.228353-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Spamd-Result: default: False [-4.30 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	RCVD_IN_DNSWL_HI(-0.50)[192.55.52.120:from];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:4983, ipnet:192.55.52.0/24, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_SEVEN(0.00)[7];
	DKIM_TRACE(0.00)[intel.com:+];
	URIBL_BLOCKED(0.00)[mga04.intel.com:rdns,mga04.intel.com:helo,intel.com:email,intel.com:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B2D474423B
X-Spamd-Bar: ----
X-MailFrom: thomas.hellstrom@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZID4ZAQPOJQUMQUQKHVK4MI2YOJ642DF
X-Message-ID-Hash: ZID4ZAQPOJQUMQUQKHVK4MI2YOJ642DF
X-Mailman-Approved-At: Wed, 03 May 2023 10:18:08 +0000
CC: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Christian Koenig <christian.koenig@amd.com>, intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC PATCH] dma-buf/dma-fence: Use a successful read_trylock() annotation for dma_fence_begin_signalling()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZID4ZAQPOJQUMQUQKHVK4MI2YOJ642DF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Q29uZHNpZGVyIHRoZSBmb2xsb3dpbmcgY2FsbCBzZXF1ZW5jZToNCg0KLyogVXBwZXIgbGF5ZXIg
Ki8NCmRtYV9mZW5jZV9iZWdpbl9zaWduYWxsaW5nKCk7DQpsb2NrKHRhaW50ZWRfc2hhcmVkX2xv
Y2spOw0KLyogRHJpdmVyIGNhbGxiYWNrICovDQpkbWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZygp
Ow0KLi4uDQoNClRoZSBkcml2ZXIgbWlnaHQgaGVyZSB1c2UgYSB1dGlsaXR5IHRoYXQgaXMgYW5u
b3RhdGVkIGFzIGludGVuZGVkIGZvciB0aGUNCmRtYS1mZW5jZSBzaWduYWxsaW5nIGNyaXRpY2Fs
IHBhdGguIE5vdyBpZiB0aGUgdXBwZXIgbGF5ZXIgaXNuJ3QgY29ycmVjdGx5DQphbm5vdGF0ZWQg
eWV0IGZvciB3aGF0ZXZlciByZWFzb24sIHJlc3VsdGluZyBpbg0KDQovKiBVcHBlciBsYXllciAq
Lw0KbG9jayh0YWludGVkX3NoYXJlZF9sb2NrKTsNCi8qIERyaXZlciBjYWxsYmFjayAqLw0KZG1h
X2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmcoKTsNCg0KV2Ugd2lsbCByZWNlaXZlIGEgZmFsc2UgbG9j
a2RlcCBsb2NraW5nIG9yZGVyIHZpb2xhdGlvbiBub3RpZmljYXRpb24gZnJvbQ0KZG1hX2ZlbmNl
X2JlZ2luX3NpZ25hbGxpbmcoKS4gSG93ZXZlciBlbnRlcmluZyBhIGRtYS1mZW5jZSBzaWduYWxs
aW5nDQpjcml0aWNhbCBzZWN0aW9uIGl0c2VsZiBkb2Vzbid0IGJsb2NrIGFuZCBjb3VsZCBub3Qg
Y2F1c2UgYSBkZWFkbG9jay4NCg0KU28gdXNlIGEgc3VjY2Vzc2Z1bCByZWFkX3RyeWxvY2soKSBh
bm5vdGF0aW9uIGluc3RlYWQgZm9yDQpkbWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZygpLiBUaGF0
IHdpbGwgbWFrZSBzdXJlIHRoYXQgdGhlIGxvY2tpbmcgb3JkZXINCmlzIGNvcnJlY3RseSByZWdp
c3RlcmVkIGluIHRoZSBmaXJzdCBjYXNlLCBhbmQgZG9lc24ndCByZWdpc3RlciBhbnkNCmxvY2tp
bmcgb3JkZXIgaW4gdGhlIHNlY29uZCBjYXNlLg0KDQpUaGUgYWx0ZXJuYXRpdmUgaXMgb2YgY291
cnNlIHRvIG1ha2Ugc3VyZSB0aGF0IHRoZSAiVXBwZXIgbGF5ZXIiIGlzIGFsd2F5cw0KY29ycmVj
dGx5IGFubm90YXRlZC4gQnV0IGV4cGVyaWVuY2Ugc2hvd3MgdGhhdCdzIG5vdCBlYXNpbHkgYWNo
aWV2YWJsZQ0KaW4gYWxsIGNhc2VzLg0KDQpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgSGVsbHN0csO2
bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+DQotLS0NCiBkcml2ZXJzL2RtYS1i
dWYvZG1hLWZlbmNlLmMgfCA2ICsrKy0tLQ0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZl
bmNlLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCmluZGV4IGYxNzdjNTYyNjliYi4u
MTdmNjMyNzY4ZWY5IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQor
KysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCkBAIC0zMDgsOCArMzA4LDggQEAgYm9v
bCBkbWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZyh2b2lkKQ0KIAlpZiAoaW5fYXRvbWljKCkpDQog
CQlyZXR1cm4gdHJ1ZTsNCiANCi0JLyogLi4uIGFuZCBub24tcmVjdXJzaXZlIHJlYWRsb2NrICov
DQotCWxvY2tfYWNxdWlyZSgmZG1hX2ZlbmNlX2xvY2tkZXBfbWFwLCAwLCAwLCAxLCAxLCBOVUxM
LCBfUkVUX0lQXyk7DQorCS8qIC4uLiBhbmQgbm9uLXJlY3Vyc2l2ZSBzdWNjZXNzZnVsIHJlYWRf
dHJ5bG9jayAqLw0KKwlsb2NrX2FjcXVpcmUoJmRtYV9mZW5jZV9sb2NrZGVwX21hcCwgMCwgMSwg
MSwgMSwgTlVMTCwgX1JFVF9JUF8pOw0KIA0KIAlyZXR1cm4gZmFsc2U7DQogfQ0KQEAgLTM0MCw3
ICszNDAsNyBAQCB2b2lkIF9fZG1hX2ZlbmNlX21pZ2h0X3dhaXQodm9pZCkNCiAJbG9ja19tYXBf
YWNxdWlyZSgmZG1hX2ZlbmNlX2xvY2tkZXBfbWFwKTsNCiAJbG9ja19tYXBfcmVsZWFzZSgmZG1h
X2ZlbmNlX2xvY2tkZXBfbWFwKTsNCiAJaWYgKHRtcCkNCi0JCWxvY2tfYWNxdWlyZSgmZG1hX2Zl
bmNlX2xvY2tkZXBfbWFwLCAwLCAwLCAxLCAxLCBOVUxMLCBfVEhJU19JUF8pOw0KKwkJbG9ja19h
Y3F1aXJlKCZkbWFfZmVuY2VfbG9ja2RlcF9tYXAsIDAsIDEsIDEsIDEsIE5VTEwsIF9USElTX0lQ
Xyk7DQogfQ0KICNlbmRpZg0KIA0KLS0gDQoyLjM5LjINCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
