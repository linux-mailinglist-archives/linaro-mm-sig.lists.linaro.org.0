Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E74B9EEA61
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Dec 2024 16:13:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1FF1A447B5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Dec 2024 15:13:31 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id E8CDF40F28
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Dec 2024 15:13:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=EkasPd6G;
	spf=pass (lists.linaro.org: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 269275C67D5;
	Thu, 12 Dec 2024 15:12:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFA47C4CED0;
	Thu, 12 Dec 2024 15:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1734016393;
	bh=NWANsmF/ITBIbpg1+qwuCTRxiUW0LDZLWQt2cKbM/78=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=EkasPd6GpzJYmNrXNDjoQibwSIMWLwYSdvAIkyTddJdNLcFWeQcw0ObetCAafOM8g
	 cHDwajUe/0rOQRXxjS2UaBwrp+KQSes8ZuoClrt9KiaIlX7bQEIv2oYenE3+J7md7H
	 Iaqv8LzvfxGf3takaeW9vS0yITBZd7ywhzBLopxM=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: stable@vger.kernel.org
Date: Thu, 12 Dec 2024 15:55:55 +0100
Message-ID: <20241212144314.148026258@linuxfoundation.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241212144306.641051666@linuxfoundation.org>
References: <20241212144306.641051666@linuxfoundation.org>
User-Agent: quilt/0.67
X-stable: review
X-Patchwork-Hint: ignore
MIME-Version: 1.0
X-Rspamd-Queue-Id: E8CDF40F28
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[139.178.84.217:from];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[12];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linuxfoundation.org,lists.linux.dev,igalia.com,amd.com,ffwll.ch,linaro.org,padovan.org,gmx.de,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received,139.178.84.217:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[linuxfoundation.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: M4AXEUPIJD5AXSLZ2CYJRXNDMZ7KMLPW
X-Message-ID-Hash: M4AXEUPIJD5AXSLZ2CYJRXNDMZ7KMLPW
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, patches@lists.linux.dev, Tvrtko Ursulin <tvrtko.ursulin@igalia.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Friedrich Vock <friedrich.vock@gmx.de>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 6.12 186/466] dma-fence: Fix reference leak on fence merge failure path
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/M4AXEUPIJD5AXSLZ2CYJRXNDMZ7KMLPW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Ni4xMi1zdGFibGUgcmV2aWV3IHBhdGNoLiAgSWYgYW55b25lIGhhcyBhbnkgb2JqZWN0aW9ucywg
cGxlYXNlIGxldCBtZSBrbm93Lg0KDQotLS0tLS0tLS0tLS0tLS0tLS0NCg0KRnJvbTogVHZydGtv
IFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlnYWxpYS5jb20+DQoNCmNvbW1pdCA5NDkyOTFjNTMx
NDAwOWI0ZjZlMjUyMzkxZWRiYjQwZmRkNWQ1NDE0IHVwc3RyZWFtLg0KDQpSZWxlYXNlIGFsbCBm
ZW5jZSByZWZlcmVuY2VzIGlmIHRoZSBvdXRwdXQgZG1hLWZlbmNlLWFycmF5IGNvdWxkIG5vdCBi
ZQ0KYWxsb2NhdGVkLg0KDQpTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVy
c3VsaW5AaWdhbGlhLmNvbT4NCkZpeGVzOiAyNDVhNGE3YjUzMWMgKCJkbWEtYnVmOiBnZW5lcmFs
aXplIGRtYV9mZW5jZSB1bndyYXAgJiBtZXJnaW5nIHYzIikNCkNjOiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZl
dHRlckBmZndsbC5jaD4NCkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3Jn
Pg0KQ2M6IEd1c3Rhdm8gUGFkb3ZhbiA8Z3VzdGF2b0BwYWRvdmFuLm9yZz4NCkNjOiBGcmllZHJp
Y2ggVm9jayA8ZnJpZWRyaWNoLnZvY2tAZ214LmRlPg0KQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2Vy
bmVsLm9yZw0KQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCkNjOiA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4gIyB2
Ni4wKw0KUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1k
LmNvbT4NClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4NCkxpbms6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9t
c2dpZC8yMDI0MTExNTEwMjE1My4xOTgwLTItdHVyc3VsaW5AaWdhbGlhLmNvbQ0KU2lnbmVkLW9m
Zi1ieTogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4NCi0t
LQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtdW53cmFwLmMgfCAgICAyICsrDQogMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQ0KDQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZl
bmNlLXVud3JhcC5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLXVud3JhcC5jDQpA
QCAtMTY0LDYgKzE2NCw4IEBAIHJlc3RhcnQ6DQogCQkJCQlkbWFfZmVuY2VfY29udGV4dF9hbGxv
YygxKSwNCiAJCQkJCTEsIGZhbHNlKTsNCiAJaWYgKCFyZXN1bHQpIHsNCisJCWZvciAoaSA9IDA7
IGkgPCBjb3VudDsgaSsrKQ0KKwkJCWRtYV9mZW5jZV9wdXQoYXJyYXlbaV0pOw0KIAkJdG1wID0g
TlVMTDsNCiAJCWdvdG8gcmV0dXJuX3RtcDsNCiAJfQ0KDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
