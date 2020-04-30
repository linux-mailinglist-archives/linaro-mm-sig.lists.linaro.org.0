Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 041381BFDF3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Apr 2020 16:24:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2A0D966030
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Apr 2020 14:24:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1B75966031; Thu, 30 Apr 2020 14:24:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C8730622F6;
	Thu, 30 Apr 2020 14:21:47 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 10C8960BD7
 for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Apr 2020 14:20:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EFD7D619EA; Thu, 30 Apr 2020 14:20:58 +0000 (UTC)
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by lists.linaro.org (Postfix) with ESMTPS id 7B14460BD7
 for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Apr 2020 14:20:57 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id k133so5314809oih.12
 for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Apr 2020 07:20:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vU7NNDB88N8b7luDUTJQIrpl7937xKbm7PdW+jOV5J4=;
 b=eVzbon9GSvdr2+SRLeZmxuPn7qpYYMeJxrzD9vXVhrajkf+3lPtUKRqTr15/+2vWto
 TCeLa7yP9V8gF56kCcqb70gH6HHxmqhvbLteIR9Xi5BAbjSTDOosZQGuQb0NtQpejLkW
 WqMdLKRaNdon1B+IFx6cnkIIi/txkXJzaK0nyMyEXntHwrIOSwm7OucJSuycIcSFEPZC
 34llAygzrbb3hQhV6qO74IA7lsnvoxrNDkdMFMGub9P+b5AUAnsKL3Vlt2XYzaX/CxRJ
 UFZZwL+GRH8MX1WwNCILxY9zZ36qJ/YD3QRmORorEDnyu3XBulvAsmhGc4rggGIhtbuM
 WEMQ==
X-Gm-Message-State: AGi0PuZcBlFxRVPV6P3TbwOcsiO99XQy1f/zROVuofEpgZf8ELQ6W3Hm
 fCuOScvD/wF491b0tNRCD6bfOp1sWcC7JRm2wcReKJB6
X-Google-Smtp-Source: APiQypKi11+B07gGR75YnzeMGeraH6AVLTAvNHkxcGX7oFLvFp4wW4F3hi8wb9UT3WC71m1+ov8vwd6qa2wRA4NbCjo=
X-Received: by 2002:aca:d485:: with SMTP id l127mr1766826oig.119.1588256456666; 
 Thu, 30 Apr 2020 07:20:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200430015930.32224-1-vitor@massaru.org>
 <cb4d93a0-b967-f37d-ea01-0368c91b896e@infradead.org>
 <0463c90cfbe2036235010c5f8b92af6a96c20f74.camel@massaru.org>
 <20200430043723.GA27272@ravnborg.org>
In-Reply-To: <20200430043723.GA27272@ravnborg.org>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Thu, 30 Apr 2020 19:50:45 +0530
Message-ID: <CAO_48GGgeJ9cFeAfKB7GjLTwOzXxk_goKsi42ocRswwXkWh11g@mail.gmail.com>
To: Sam Ravnborg <sam@ravnborg.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Randy Dunlap <rdunlap@infradead.org>, brendanhiggins@google.com,
 LKML <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Linaro MM SIG <linaro-mm-sig@lists.linaro.org>, skhan@linuxfoundation.org,
 linux-kernel-mentees@lists.linuxfoundation.org,
 Vitor Massaru Iha <vitor@massaru.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: Documentation: fix: `make
	htmldocs` warnings
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

SGVsbG8gRXZlcnlvbmUsCgpPbiBUaHUsIDMwIEFwciAyMDIwIGF0IDEwOjA3LCBTYW0gUmF2bmJv
cmcgPHNhbUByYXZuYm9yZy5vcmc+IHdyb3RlOgo+Cj4gT24gV2VkLCBBcHIgMjksIDIwMjAgYXQg
MTE6Mjc6MjJQTSAtMDMwMCwgVml0b3IgTWFzc2FydSBJaGEgd3JvdGU6Cj4gPiBPbiBXZWQsIDIw
MjAtMDQtMjkgYXQgMTk6MDYgLTA3MDAsIFJhbmR5IER1bmxhcCB3cm90ZToKPiA+ID4gT24gNC8y
OS8yMCA2OjU5IFBNLCBWaXRvciBNYXNzYXJ1IEloYSB3cm90ZToKPiA+ID4gPiBBZGQgbWlzc2Vk
ICI6IiBvbiBrZXJuZWwtZG9jIGZ1bmN0aW9uIHBhcmFtZXRlci4KPiA+ID4gPgo+ID4gPiA+IFRo
aXMgcGF0Y2ggZml4ZXMgdGhpcyB3YXJuaW5ncyBmcm9tIGBtYWtlIGh0bWxkb2NzYDoKPiA+ID4g
PiAuL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmM6Njc4OiB3YXJuaW5nOiBGdW5jdGlvbiBwYXJh
bWV0ZXIgb3IKPiA+ID4gPiBtZW1iZXIgJ2ltcG9ydGVyX29wcycgbm90IGRlc2NyaWJlZCBpbiAn
ZG1hX2J1Zl9keW5hbWljX2F0dGFjaCcKPiA+ID4gPiAuL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVm
LmM6Njc4OiB3YXJuaW5nOiBGdW5jdGlvbiBwYXJhbWV0ZXIgb3IKPiA+ID4gPiBtZW1iZXIgJ2lt
cG9ydGVyX3ByaXYnIG5vdCBkZXNjcmliZWQgaW4gJ2RtYV9idWZfZHluYW1pY19hdHRhY2gnCj4g
PiA+ID4KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBWaXRvciBNYXNzYXJ1IEloYSA8dml0b3JAbWFz
c2FydS5vcmc+Cj4gPiA+ID4gLS0tCj4gPiA+ID4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMg
fCA0ICsrLS0KPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKPiA+ID4gPgo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1h
LWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+ID4gPiA+IGluZGV4IGNjYzllZGEx
YmMyOC4uMDc1NmQyMTU1NzQ1IDEwMDY0NAo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmMKPiA+ID4gPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4gPiA+ID4g
QEAgLTY1NSw4ICs2NTUsOCBAQCBFWFBPUlRfU1lNQk9MX0dQTChkbWFfYnVmX3B1dCk7Cj4gPiA+
ID4gICAqIGNhbGxzIGF0dGFjaCgpIG9mIGRtYV9idWZfb3BzIHRvIGFsbG93IGRldmljZS1zcGVj
aWZpYyBhdHRhY2gKPiA+ID4gPiBmdW5jdGlvbmFsaXR5Cj4gPiA+ID4gICAqIEBkbWFidWY6ICAg
ICAgICAgICAgICBbaW5dICAgIGJ1ZmZlciB0byBhdHRhY2ggZGV2aWNlIHRvLgo+ID4gPiA+ICAg
KiBAZGV2OiAgICAgICAgIFtpbl0gICAgZGV2aWNlIHRvIGJlIGF0dGFjaGVkLgo+ID4gPiA+IC0g
KiBAaW1wb3J0ZXJfb3BzIFtpbl0gICAgaW1wb3J0ZXIgb3BlcmF0aW9ucyBmb3IgdGhlCj4gPiA+
ID4gYXR0YWNobWVudAo+ID4gPiA+IC0gKiBAaW1wb3J0ZXJfcHJpdiAgICAgICAgW2luXSAgICBp
bXBvcnRlciBwcml2YXRlIHBvaW50ZXIgZm9yIHRoZQo+ID4gPiA+IGF0dGFjaG1lbnQKPiA+ID4g
PiArICogQGltcG9ydGVyX29wczogICAgICAgIFtpbl0gICAgaW1wb3J0ZXIgb3BlcmF0aW9ucyBm
b3IgdGhlCj4gPiA+ID4gYXR0YWNobWVudAo+ID4gPiA+ICsgKiBAaW1wb3J0ZXJfcHJpdjogICAg
ICAgW2luXSAgICBpbXBvcnRlciBwcml2YXRlIHBvaW50ZXIgZm9yIHRoZQo+ID4gPiA+IGF0dGFj
aG1lbnQKPiA+ID4gPiAgICoKPiA+ID4gPiAgICogUmV0dXJucyBzdHJ1Y3QgZG1hX2J1Zl9hdHRh
Y2htZW50IHBvaW50ZXIgZm9yIHRoaXMgYXR0YWNobWVudC4KPiA+ID4gPiBBdHRhY2htZW50cwo+
ID4gPiA+ICAgKiBtdXN0IGJlIGNsZWFuZWQgdXAgYnkgY2FsbGluZyBkbWFfYnVmX2RldGFjaCgp
Lgo+ID4gPiA+Cj4gPiA+Cj4gPiA+IFN1bWl0IHNhaWQgdGhhdCBoZSB3b3VsZCBiZSBhcHBseWlu
ZyBteSBwYXRjaCBmcm9tIEFwcmlsIDc6Cj4gPiA+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xp
bnV4LW1lZGlhLzdiY2JlNmZlLTBiNGItODdkYS1kMDAzLWI2OGEyNmViNGNmMEBpbmZyYWRlYWQu
b3JnLwo+ID4gPgo+ID4gPiB0aGFua3MuCj4gPgo+ID4gU29ycnkuIEkgZGlkbid0IGNoZWNrIGlm
IHRoZSBwYXRjaCBoYXMgYWxyZWFkeSBiZWVuIHNlbnQuCj4KPiBTdW1pdCAtIHBhdGNoIGZyb20g
UmFuZHkgaXMgbmVpdGhlciBhcHBsaWVkIHRvIGRybS1taXNjLW5leHQgbm9yCj4gZHJtLW1pc2Mt
Zml4ZXMuCj4gQSByZW1pbmRlciBpbiBjYXNlIGl0IHdhcyBsb3N0IHNvbWV3aGVyZS4KCk15IGJh
ZDogSSBoYXZlIG5vdyBhcHBsaWVkIGl0IHRvIGRybS1taXNjLWZpeGVzLCBzbyBzaG91bGQgYmUg
c2VlbiBpbgotbmV4dCBzb29uLgoKPgo+ICAgICAgICAgU2FtCgpCZXN0LApTdW1pdC4KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMu
bGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
