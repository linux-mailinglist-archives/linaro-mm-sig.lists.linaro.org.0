Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 636D11C3379
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 09:16:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 30FAA619D0
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 07:16:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 232BF619D4; Mon,  4 May 2020 07:16:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 198F461725;
	Mon,  4 May 2020 07:15:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 34F516156D
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 07:15:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 219E460EA5; Mon,  4 May 2020 07:15:37 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id 9538A60EA5
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 07:15:35 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6963720721;
 Mon,  4 May 2020 07:15:34 +0000 (UTC)
To: daniel.vetter@ffwll.ch, daniel.vetter@intel.com, fengc@google.com,
 ghackmann@google.com, gregkh@linuxfoundation.org, jenhaochen@google.com,
 linaro-mm-sig@lists.linaro.org, liumartin@google.com, minchan@kernel.org,
 sumit.semwal@linaro.org, surenb@google.com
From: <gregkh@linuxfoundation.org>
Date: Mon, 04 May 2020 09:15:32 +0200
Message-ID: <158857653223166@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: stable-commits@vger.kernel.org
Subject: [Linaro-mm-sig] Patch "dma-buf: Fix SET_NAME ioctl uapi" has been
	added to the 5.4-stable tree
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

ClRoaXMgaXMgYSBub3RlIHRvIGxldCB5b3Uga25vdyB0aGF0IEkndmUganVzdCBhZGRlZCB0aGUg
cGF0Y2ggdGl0bGVkCgogICAgZG1hLWJ1ZjogRml4IFNFVF9OQU1FIGlvY3RsIHVhcGkKCnRvIHRo
ZSA1LjQtc3RhYmxlIHRyZWUgd2hpY2ggY2FuIGJlIGZvdW5kIGF0OgogICAgaHR0cDovL3d3dy5r
ZXJuZWwub3JnL2dpdC8/cD1saW51eC9rZXJuZWwvZ2l0L3N0YWJsZS9zdGFibGUtcXVldWUuZ2l0
O2E9c3VtbWFyeQoKVGhlIGZpbGVuYW1lIG9mIHRoZSBwYXRjaCBpczoKICAgICBkbWEtYnVmLWZp
eC1zZXRfbmFtZS1pb2N0bC11YXBpLnBhdGNoCmFuZCBpdCBjYW4gYmUgZm91bmQgaW4gdGhlIHF1
ZXVlLTUuNCBzdWJkaXJlY3RvcnkuCgpJZiB5b3UsIG9yIGFueW9uZSBlbHNlLCBmZWVscyBpdCBz
aG91bGQgbm90IGJlIGFkZGVkIHRvIHRoZSBzdGFibGUgdHJlZSwKcGxlYXNlIGxldCA8c3RhYmxl
QHZnZXIua2VybmVsLm9yZz4ga25vdyBhYm91dCBpdC4KCgpGcm9tIGE1YmZmOTJlYWFjNDViZGY2
MjIxYmFkZjk1MDVjMjY3OTJmZGY5OWUgTW9uIFNlcCAxNyAwMDowMDowMCAyMDAxCkZyb206IERh
bmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpEYXRlOiBUdWUsIDcgQXByIDIw
MjAgMTU6MzA6MDIgKzAyMDAKU3ViamVjdDogZG1hLWJ1ZjogRml4IFNFVF9OQU1FIGlvY3RsIHVh
cGkKCkZyb206IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgoKY29tbWl0
IGE1YmZmOTJlYWFjNDViZGY2MjIxYmFkZjk1MDVjMjY3OTJmZGY5OWUgdXBzdHJlYW0uCgpUaGUg
dWFwaSBpcyB0aGUgc2FtZSBvbiAzMiBhbmQgNjQgYml0LCBidXQgdGhlIG51bWJlciBpc24ndC4g
RXZlcnlvbmUKd2hvIGJvdGNoZWQgdGhpcyBwbGVhc2UgcmUtcmVhZDoKCmh0dHBzOi8vd3d3Lmtl
cm5lbC5vcmcvZG9jL2h0bWwvdjUuNC1wcmVwcmMtY3B1L2lvY3RsL2JvdGNoaW5nLXVwLWlvY3Rs
cy5odG1sCgpBbHNvLCB0aGUgdHlwZSBhcmd1bWVudCBmb3IgdGhlIGlvY3RsIG1hY3JvcyBpcyBm
b3IgdGhlIHR5cGUgdGhlIHZvaWQKX191c2VyICphcmcgcG9pbnRlciBwb2ludHMgYXQsIHdoaWNo
IGluIHRoaXMgY2FzZSB3b3VsZCBiZSB0aGUKdmFyaWFibGUtc2l6ZWQgY2hhcltdIG9mIGEgMCB0
ZXJtaW5hdGVkIHN0cmluZy4gU28gdGhpcyB3YXMgYm90Y2hlZCBpbgptb3JlIHRoYW4ganVzdCB0
aGUgdXN1YWwgd2F5cy4KCkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3Jn
PgpDYzogQ2hlbmJvIEZlbmcgPGZlbmdjQGdvb2dsZS5jb20+CkNjOiBHcmVnIEhhY2ttYW5uIDxn
aGFja21hbm5AZ29vZ2xlLmNvbT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3
bGwuY2g+CkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpDYzogbWluY2hhbkBrZXJuZWwub3JnCkNjOiBzdXJlbmJAZ29vZ2xl
LmNvbQpDYzogamVuaGFvY2hlbkBnb29nbGUuY29tCkNjOiBNYXJ0aW4gTGl1IDxsaXVtYXJ0aW5A
Z29vZ2xlLmNvbT4KU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBp
bnRlbC5jb20+ClRlc3RlZC1ieTogTWFydGluIExpdSA8bGl1bWFydGluQGdvb2dsZS5jb20+ClJl
dmlld2VkLWJ5OiBNYXJ0aW4gTGl1IDxsaXVtYXJ0aW5AZ29vZ2xlLmNvbT4KU2lnbmVkLW9mZi1i
eTogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4KICBbc3VtaXRzOiB1cGRh
dGVkIHNvbWUgY2hlY2twYXRjaCBmaXhlcywgY29ycmVjdGVkIGF1dGhvciBlbWFpbF0KTGluazog
aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoL21zZ2lkLzIwMjAwNDA3MTMz
MDAyLjM0ODYzODctMS1kYW5pZWwudmV0dGVyQGZmd2xsLmNoClNpZ25lZC1vZmYtYnk6IEdyZWcg
S3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+CgotLS0KIGRyaXZlcnMv
ZG1hLWJ1Zi9kbWEtYnVmLmMgICAgfCAgICAzICsrLQogaW5jbHVkZS91YXBpL2xpbnV4L2RtYS1i
dWYuaCB8ICAgIDYgKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQoKLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYworKysgYi9kcml2ZXJz
L2RtYS1idWYvZG1hLWJ1Zi5jCkBAIC0zODgsNyArMzg4LDggQEAgc3RhdGljIGxvbmcgZG1hX2J1
Zl9pb2N0bChzdHJ1Y3QgZmlsZSAqZgogCiAJCXJldHVybiByZXQ7CiAKLQljYXNlIERNQV9CVUZf
U0VUX05BTUU6CisJY2FzZSBETUFfQlVGX1NFVF9OQU1FX0E6CisJY2FzZSBETUFfQlVGX1NFVF9O
QU1FX0I6CiAJCXJldHVybiBkbWFfYnVmX3NldF9uYW1lKGRtYWJ1ZiwgKGNvbnN0IGNoYXIgX191
c2VyICopYXJnKTsKIAogCWRlZmF1bHQ6Ci0tLSBhL2luY2x1ZGUvdWFwaS9saW51eC9kbWEtYnVm
LmgKKysrIGIvaW5jbHVkZS91YXBpL2xpbnV4L2RtYS1idWYuaApAQCAtMzksNiArMzksMTIgQEAg
c3RydWN0IGRtYV9idWZfc3luYyB7CiAKICNkZWZpbmUgRE1BX0JVRl9CQVNFCQknYicKICNkZWZp
bmUgRE1BX0JVRl9JT0NUTF9TWU5DCV9JT1coRE1BX0JVRl9CQVNFLCAwLCBzdHJ1Y3QgZG1hX2J1
Zl9zeW5jKQorCisvKiAzMi82NGJpdG5lc3Mgb2YgdGhpcyB1YXBpIHdhcyBib3RjaGVkIGluIGFu
ZHJvaWQsIHRoZXJlJ3Mgbm8gZGlmZmVyZW5jZQorICogYmV0d2VlbiB0aGVtIGluIGFjdHVhbCB1
YXBpLCB0aGV5J3JlIGp1c3QgZGlmZmVyZW50IG51bWJlcnMuCisgKi8KICNkZWZpbmUgRE1BX0JV
Rl9TRVRfTkFNRQlfSU9XKERNQV9CVUZfQkFTRSwgMSwgY29uc3QgY2hhciAqKQorI2RlZmluZSBE
TUFfQlVGX1NFVF9OQU1FX0EJX0lPVyhETUFfQlVGX0JBU0UsIDEsIHUzMikKKyNkZWZpbmUgRE1B
X0JVRl9TRVRfTkFNRV9CCV9JT1coRE1BX0JVRl9CQVNFLCAxLCB1NjQpCiAKICNlbmRpZgoKClBh
dGNoZXMgY3VycmVudGx5IGluIHN0YWJsZS1xdWV1ZSB3aGljaCBtaWdodCBiZSBmcm9tIGRhbmll
bC52ZXR0ZXJAaW50ZWwuY29tIGFyZQoKcXVldWUtNS40L2RtYS1idWYtZml4LXNldF9uYW1lLWlv
Y3RsLXVhcGkucGF0Y2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1t
bS1zaWcK
