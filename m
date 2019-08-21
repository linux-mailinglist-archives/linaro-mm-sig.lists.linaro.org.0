Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF3898547
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Aug 2019 22:12:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 169C36184D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Aug 2019 20:12:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0B8C06185A; Wed, 21 Aug 2019 20:12:12 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 397A861851;
	Wed, 21 Aug 2019 20:11:47 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8EBC861846
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 20:11:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 820AB61851; Wed, 21 Aug 2019 20:11:44 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id 8662761846
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 20:11:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18219228-1500050 for multiple; Wed, 21 Aug 2019 21:11:33 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 daniel.vetter@ffwll.ch, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org,
 sumit.semwal@linaro.org
References: <20190821123147.110736-1-christian.koenig@amd.com>
In-Reply-To: <20190821123147.110736-1-christian.koenig@amd.com>
Message-ID: <156641829139.20466.3485292236947741339@skylake-alporthouse-com>
Date: Wed, 21 Aug 2019 21:11:31 +0100
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC] replacing dma_resv API
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

UXVvdGluZyBDaHJpc3RpYW4gS8O2bmlnICgyMDE5LTA4LTIxIDEzOjMxOjM3KQo+IEhpIGV2ZXJ5
b25lLAo+IAo+IEluIHByZXZpb3VzIGRpc2N1c3Npb24gaXQgc3VyZmFjZWQgdGhhdCBkaWZmZXJl
bnQgZHJpdmVycyB1c2UgdGhlIHNoYXJlZCBhbmQgZXhwbGljaXQgZmVuY2VzIGluIHRoZSBkbWFf
cmVzdiBvYmplY3Qgd2l0aCBkaWZmZXJlbnQgbWVhbmluZ3MuCj4gCj4gVGhpcyBpcyBwcm9ibGVt
YXRpYyB3aGVuIHdlIHNoYXJlIGJ1ZmZlcnMgYmV0d2VlbiB0aG9zZSBkcml2ZXJzIGFuZCByZXF1
aXJlbWVudHMgZm9yIGltcGxpY2l0IGFuZCBleHBsaWNpdCBzeW5jaHJvbml6YXRpb24gbGVhZGVk
IHRvIHF1aXRlIGEgbnVtYmVyIG9mIHdvcmthcm91bmRzIHJlbGF0ZWQgdG8gdGhpcy4KPiAKPiBT
byBJIHN0YXJ0ZWQgYW4gZWZmb3J0IHRvIGdldCBhbGwgZHJpdmVycyBiYWNrIHRvIGEgY29tbW9u
IHVuZGVyc3RhbmRpbmcgb2Ygd2hhdCB0aGUgZmVuY2VzIGluIHRoZSBkbWFfcmVzdiBvYmplY3Qg
bWVhbiBhbmQgYmUgYWJsZSB0byB1c2UgdGhlIG9iamVjdCBmb3IgZGlmZmVyZW50IGtpbmQgb2Yg
d29ya2xvYWRzIGluZGVwZW5kZW50IG9mIHRoZSBjbGFzc2ljIERSTSBjb21tYW5kIHN1Ym1pc3Np
b24gaW50ZXJmYWNlLgo+IAo+IFRoZSByZXN1bHQgaXMgdGhpcyBwYXRjaCBzZXQgd2hpY2ggbW9k
aWZpZXMgdGhlIGRtYV9yZXN2IEFQSSB0byBnZXQgYXdheSBmcm9tIGEgc2luZ2xlIGV4cGxpY2l0
IGZlbmNlIGFuZCBtdWx0aXBsZSBzaGFyZWQgZmVuY2VzLCB0b3dhcmRzIGEgbm90YXRpb24gd2hl
cmUgd2UgaGF2ZSBleHBsaWNpdCBjYXRlZ29yaWVzIGZvciB3cml0ZXJzLCByZWFkZXJzIGFuZCBv
dGhlcnMuCgpGd2l3LCBJIHdvdWxkIGxpa2UgdGhlIGRpc3RpbmN0aW9uIGhlcmUgYmV0d2VlbiBv
cHRpb25hbCBmZW5jZXMKKHdyaXRlcnMsIHJlYWRlcnMpIGFuZCBtYW5kYXRvcnkgZmVuY2VzIChv
dGhlcnMpLiBUaGUgb3B0aW9uYWwgZmVuY2VzCmFyZSB3aGVyZSB3ZSBwdXQgdGhlIGltcGxpY2l0
IGZlbmNlIHRyYWNraW5nIHRoYXQgY2xldmVyIHVzZXJzcGFjZSB3b3VsZApyYXRoZXIgYXZvaWQu
IFRoZSBtYW5kYXRvcnkgZmVuY2VzIChJIHdvdWxkIGNhbGwgaW50ZXJuYWwpIGlzIHdoZXJlIHdl
CnB1dCB0aGUgZmVuY2VzIGZvciB0cmFja2luZyBtaWdyYXRpb24gdGhhdCB1c2Vyc3BhY2UgY2Fu
IG5vdCBvcHQgb3V0IG9mLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbmFyby1tbS1zaWcK
