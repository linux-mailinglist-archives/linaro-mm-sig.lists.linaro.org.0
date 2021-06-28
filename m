Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0773B5663
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Jun 2021 02:40:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4A77F617B9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Jun 2021 00:40:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8A98D66012; Mon, 28 Jun 2021 00:40:23 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2F57C617DA;
	Mon, 28 Jun 2021 00:40:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2F68F612A3
 for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Jun 2021 00:40:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 25399617DA; Mon, 28 Jun 2021 00:40:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 192A0612A3
 for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Jun 2021 00:40:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=lra+cUKfxwndGLkV7ZWKLMN4hPRlMGF3o/8Xt0/nRac=; b=bJx5T8WWjr/W2k/br2OI9ZqEsE
 iwsRP2qCtB7KQOjyszj+otTS5KTtffDEDByBCOWoJK+Cf61AV5EbBcajb0eneIRrF1b13b4AqK7Ed
 YjoQEeeSQzswxHSwWoa7RS4l4wmvV/rEvrb/XUM0AqdpHXRQwTSkGpXu6ZWYM+boeeTtdNQp8RcVe
 MirbaL5h84zzr3BfCSQTJQm3uzQQlwSrcMEQvYW+GxtTvTBxy0udL50t9BxzF0lEvxQ/RNFAxDFjj
 7zPcuvZbL8KIYbT9AKkz5EApJRNUMQneccicByPk4JVsy7yMmR8CMP6LbQ8DAMvfRrhoGyfdWAJ3s
 WyHgmAGQ==;
Received: from [2601:1c0:6280:3f0::aefb] (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxfJt-006MWD-LC; Mon, 28 Jun 2021 00:40:13 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-kernel@vger.kernel.org
Date: Sun, 27 Jun 2021 17:40:12 -0700
Message-Id: <20210628004012.6792-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH -next] <linux/dma-resv.h>: correct a
 function name in kernel-doc
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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
Cc: Randy Dunlap <rdunlap@infradead.org>, dri-devel@lists.freedesktop.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Rml4IGtlcm5lbC1kb2MgZnVuY3Rpb24gbmFtZSB3YXJuaW5nOgoKLi4vaW5jbHVkZS9saW51eC9k
bWEtcmVzdi5oOjIyNzogd2FybmluZzogZXhwZWN0aW5nIHByb3RvdHlwZSBmb3IgZG1hX3Jlc3Zf
ZXhjbHVzaXZlKCkuIFByb3RvdHlwZSB3YXMgZm9yIGRtYV9yZXN2X2V4Y2xfZmVuY2UoKSBpbnN0
ZWFkCgpGaXhlczogNmVkYmQ2YWJiNzgzZCAoIm1hLWJ1ZjogcmVuYW1lIGFuZCBjbGVhbnVwIGRt
YV9yZXN2X2dldF9leGNsIHYzIikKU2lnbmVkLW9mZi1ieTogUmFuZHkgRHVubGFwIDxyZHVubGFw
QGluZnJhZGVhZC5vcmc+CkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3Jn
PgpDYzogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpDYzogbGlu
dXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCkNjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKLS0tCiBpbmNsdWRlL2xpbnV4
L2RtYS1yZXN2LmggfCAgICAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEg
ZGVsZXRpb24oLSkKCi0tLSBsaW51eC1uZXh0LTIwMjEwNjI1Lm9yaWcvaW5jbHVkZS9saW51eC9k
bWEtcmVzdi5oCisrKyBsaW51eC1uZXh0LTIwMjEwNjI1L2luY2x1ZGUvbGludXgvZG1hLXJlc3Yu
aApAQCAtMjEyLDcgKzIxMiw3IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBkbWFfcmVzdl91bmxvY2so
c3RydWMKIH0KIAogLyoqCi0gKiBkbWFfcmVzdl9leGNsdXNpdmUgLSByZXR1cm4gdGhlIG9iamVj
dCdzIGV4Y2x1c2l2ZSBmZW5jZQorICogZG1hX3Jlc3ZfZXhjbF9mZW5jZSAtIHJldHVybiB0aGUg
b2JqZWN0J3MgZXhjbHVzaXZlIGZlbmNlCiAgKiBAb2JqOiB0aGUgcmVzZXJ2YXRpb24gb2JqZWN0
CiAgKgogICogUmV0dXJucyB0aGUgZXhjbHVzaXZlIGZlbmNlIChpZiBhbnkpLiBDYWxsZXIgbXVz
dCBlaXRoZXIgaG9sZCB0aGUgb2JqZWN0cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGluYXJvLW1tLXNpZwo=
