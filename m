Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA271C4402
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 20:03:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EB48166227
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 18:03:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DBD0166240; Mon,  4 May 2020 18:03:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7F95B6607B;
	Mon,  4 May 2020 18:02:51 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7C25166075
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 18:02:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6DE0D66079; Mon,  4 May 2020 18:02:46 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id 4B6CF66075
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 18:02:45 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2C16020721;
 Mon,  4 May 2020 18:02:44 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Date: Mon,  4 May 2020 19:57:05 +0200
Message-Id: <20200504165456.862815638@linuxfoundation.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200504165456.783676004@linuxfoundation.org>
References: <20200504165456.783676004@linuxfoundation.org>
User-Agent: quilt/0.66
X-stable: review
X-Patchwork-Hint: ignore
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Daniel Vetter <daniel.vetter@intel.com>, Chenbo Feng <fengc@google.com>,
 stable@vger.kernel.org, linaro-mm-sig@lists.linaro.org, minchan@kernel.org,
 jenhaochen@google.com, Greg Hackmann <ghackmann@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Martin Liu <liumartin@google.com>, surenb@google.com,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH 5.4 01/57] dma-buf: Fix SET_NAME ioctl uapi
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

RnJvbTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cgpjb21taXQgYTVi
ZmY5MmVhYWM0NWJkZjYyMjFiYWRmOTUwNWMyNjc5MmZkZjk5ZSB1cHN0cmVhbS4KClRoZSB1YXBp
IGlzIHRoZSBzYW1lIG9uIDMyIGFuZCA2NCBiaXQsIGJ1dCB0aGUgbnVtYmVyIGlzbid0LiBFdmVy
eW9uZQp3aG8gYm90Y2hlZCB0aGlzIHBsZWFzZSByZS1yZWFkOgoKaHR0cHM6Ly93d3cua2VybmVs
Lm9yZy9kb2MvaHRtbC92NS40LXByZXByYy1jcHUvaW9jdGwvYm90Y2hpbmctdXAtaW9jdGxzLmh0
bWwKCkFsc28sIHRoZSB0eXBlIGFyZ3VtZW50IGZvciB0aGUgaW9jdGwgbWFjcm9zIGlzIGZvciB0
aGUgdHlwZSB0aGUgdm9pZApfX3VzZXIgKmFyZyBwb2ludGVyIHBvaW50cyBhdCwgd2hpY2ggaW4g
dGhpcyBjYXNlIHdvdWxkIGJlIHRoZQp2YXJpYWJsZS1zaXplZCBjaGFyW10gb2YgYSAwIHRlcm1p
bmF0ZWQgc3RyaW5nLiBTbyB0aGlzIHdhcyBib3RjaGVkIGluCm1vcmUgdGhhbiBqdXN0IHRoZSB1
c3VhbCB3YXlzLgoKQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+CkNj
OiBDaGVuYm8gRmVuZyA8ZmVuZ2NAZ29vZ2xlLmNvbT4KQ2M6IEdyZWcgSGFja21hbm4gPGdoYWNr
bWFubkBnb29nbGUuY29tPgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5j
aD4KQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwpDYzogbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCkNjOiBtaW5jaGFuQGtlcm5lbC5vcmcKQ2M6IHN1cmVuYkBnb29nbGUuY29t
CkNjOiBqZW5oYW9jaGVuQGdvb2dsZS5jb20KQ2M6IE1hcnRpbiBMaXUgPGxpdW1hcnRpbkBnb29n
bGUuY29tPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVs
LmNvbT4KVGVzdGVkLWJ5OiBNYXJ0aW4gTGl1IDxsaXVtYXJ0aW5AZ29vZ2xlLmNvbT4KUmV2aWV3
ZWQtYnk6IE1hcnRpbiBMaXUgPGxpdW1hcnRpbkBnb29nbGUuY29tPgpTaWduZWQtb2ZmLWJ5OiBT
dW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgogIFtzdW1pdHM6IHVwZGF0ZWQg
c29tZSBjaGVja3BhdGNoIGZpeGVzLCBjb3JyZWN0ZWQgYXV0aG9yIGVtYWlsXQpMaW5rOiBodHRw
czovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNnaWQvMjAyMDA0MDcxMzMwMDIu
MzQ4NjM4Ny0xLWRhbmllbC52ZXR0ZXJAZmZ3bGwuY2gKU2lnbmVkLW9mZi1ieTogR3JlZyBLcm9h
aC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4KCi0tLQogZHJpdmVycy9kbWEt
YnVmL2RtYS1idWYuYyAgICB8ICAgIDMgKystCiBpbmNsdWRlL3VhcGkvbGludXgvZG1hLWJ1Zi5o
IHwgICAgNiArKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pCgotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCisrKyBiL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtYnVmLmMKQEAgLTM4OCw3ICszODgsOCBAQCBzdGF0aWMgbG9uZyBkbWFfYnVmX2lv
Y3RsKHN0cnVjdCBmaWxlICpmCiAKIAkJcmV0dXJuIHJldDsKIAotCWNhc2UgRE1BX0JVRl9TRVRf
TkFNRToKKwljYXNlIERNQV9CVUZfU0VUX05BTUVfQToKKwljYXNlIERNQV9CVUZfU0VUX05BTUVf
QjoKIAkJcmV0dXJuIGRtYV9idWZfc2V0X25hbWUoZG1hYnVmLCAoY29uc3QgY2hhciBfX3VzZXIg
KilhcmcpOwogCiAJZGVmYXVsdDoKLS0tIGEvaW5jbHVkZS91YXBpL2xpbnV4L2RtYS1idWYuaAor
KysgYi9pbmNsdWRlL3VhcGkvbGludXgvZG1hLWJ1Zi5oCkBAIC0zOSw2ICszOSwxMiBAQCBzdHJ1
Y3QgZG1hX2J1Zl9zeW5jIHsKIAogI2RlZmluZSBETUFfQlVGX0JBU0UJCSdiJwogI2RlZmluZSBE
TUFfQlVGX0lPQ1RMX1NZTkMJX0lPVyhETUFfQlVGX0JBU0UsIDAsIHN0cnVjdCBkbWFfYnVmX3N5
bmMpCisKKy8qIDMyLzY0Yml0bmVzcyBvZiB0aGlzIHVhcGkgd2FzIGJvdGNoZWQgaW4gYW5kcm9p
ZCwgdGhlcmUncyBubyBkaWZmZXJlbmNlCisgKiBiZXR3ZWVuIHRoZW0gaW4gYWN0dWFsIHVhcGks
IHRoZXkncmUganVzdCBkaWZmZXJlbnQgbnVtYmVycy4KKyAqLwogI2RlZmluZSBETUFfQlVGX1NF
VF9OQU1FCV9JT1coRE1BX0JVRl9CQVNFLCAxLCBjb25zdCBjaGFyICopCisjZGVmaW5lIERNQV9C
VUZfU0VUX05BTUVfQQlfSU9XKERNQV9CVUZfQkFTRSwgMSwgdTMyKQorI2RlZmluZSBETUFfQlVG
X1NFVF9OQU1FX0IJX0lPVyhETUFfQlVGX0JBU0UsIDEsIHU2NCkKIAogI2VuZGlmCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMu
bGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
