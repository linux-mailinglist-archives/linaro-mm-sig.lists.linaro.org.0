Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 522BF2484F2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 14:42:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 679F365FD7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 12:42:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 586316601F; Tue, 18 Aug 2020 12:42:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2D2A76660D;
	Tue, 18 Aug 2020 12:32:47 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 281FA606A3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Jul 2020 17:08:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1D535617ED; Tue, 28 Jul 2020 17:08:36 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id 9C0B3606A3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Jul 2020 17:08:34 +0000 (UTC)
Received: from kozik-lap.mshome.net (unknown [194.230.155.213])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 318A9207F5;
 Tue, 28 Jul 2020 17:08:32 +0000 (UTC)
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Gustavo Padovan <gustavo@padovan.org>, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-kernel@vger.kernel.org
Date: Tue, 28 Jul 2020 19:08:21 +0200
Message-Id: <20200728170821.28050-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200728170821.28050-1-krzk@kernel.org>
References: <20200728170821.28050-1-krzk@kernel.org>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Tue, 18 Aug 2020 12:32:33 +0000
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Subject: [Linaro-mm-sig] [PATCH 2/2] dma-buf: fence-chain: Document missing
	dma_fence_chain_init() parameter in kerneldoc
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Rml4IFc9MSBjb21waWxlIHdhcm5pbmdzIChpbnZhbGlkIGtlcm5lbGRvYyk6CgogICAgZHJpdmVy
cy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5jOjIzMzogd2FybmluZzogRnVuY3Rpb24gcGFyYW1l
dGVyIG9yIG1lbWJlciAnc2Vxbm8nIG5vdCBkZXNjcmliZWQgaW4gJ2RtYV9mZW5jZV9jaGFpbl9p
bml0JwoKU2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3Jn
PgotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYyB8IDEgKwogMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1m
ZW5jZS1jaGFpbi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5jCmluZGV4IDNk
MTIzNTAyZmYxMi4uN2QxMjllNjhhYzcwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1h
LWZlbmNlLWNoYWluLmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5jCkBA
IC0yMjIsNiArMjIyLDcgQEAgRVhQT1JUX1NZTUJPTChkbWFfZmVuY2VfY2hhaW5fb3BzKTsKICAq
IEBjaGFpbjogdGhlIGNoYWluIG5vZGUgdG8gaW5pdGlhbGl6ZQogICogQHByZXY6IHRoZSBwcmV2
aW91cyBmZW5jZQogICogQGZlbmNlOiB0aGUgY3VycmVudCBmZW5jZQorICogQHNlcW5vOiB0aGUg
c2VxdWVuY2UgbnVtYmVyIHRvIHVzZSBmb3IgdGhlIGZlbmNlIGNoYWluCiAgKgogICogSW5pdGlh
bGl6ZSBhIG5ldyBjaGFpbiBub2RlIGFuZCBlaXRoZXIgc3RhcnQgYSBuZXcgY2hhaW4gb3IgYWRk
IHRoZSBub2RlIHRvCiAgKiB0aGUgZXhpc3RpbmcgY2hhaW4gb2YgdGhlIHByZXZpb3VzIGZlbmNl
LgotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1t
LXNpZwo=
