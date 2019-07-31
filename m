Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 39CAF7C432
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Jul 2019 15:58:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5CE49609B3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Jul 2019 13:58:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5254960B69; Wed, 31 Jul 2019 13:58:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E2AF06098C;
	Wed, 31 Jul 2019 13:58:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E79EC60795
 for <linaro-mm-sig@lists.linaro.org>; Wed, 31 Jul 2019 13:58:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CACCA6098C; Wed, 31 Jul 2019 13:58:17 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id 3191660795
 for <linaro-mm-sig@lists.linaro.org>; Wed, 31 Jul 2019 13:58:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17760809-1500050 for multiple; Wed, 31 Jul 2019 14:58:09 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 christian.koenig@amd.com, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org,
 sumit.semwal@linaro.org
References: <20190731113853.51779-1-christian.koenig@amd.com>
 <156457641010.6373.7515721920178088211@skylake-alporthouse-com>
 <6421ea80-2bdd-7f63-1cba-9c57157f3946@gmail.com>
In-Reply-To: <6421ea80-2bdd-7f63-1cba-9c57157f3946@gmail.com>
Message-ID: <156458148806.15787.4157473890441039515@skylake-alporthouse-com>
Date: Wed, 31 Jul 2019 14:58:08 +0100
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: add more reservation object
	locking wrappers
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

UXVvdGluZyBDaHJpc3RpYW4gS8O2bmlnICgyMDE5LTA3LTMxIDE0OjM0OjI4KQo+IEFtIDMxLjA3
LjE5IHVtIDE0OjMzIHNjaHJpZWIgQ2hyaXMgV2lsc29uOgo+ID4gUXVvdGluZyBDaHJpc3RpYW4g
S8O2bmlnICgyMDE5LTA3LTMxIDEyOjM4OjUzKQo+ID4+IENvbXBsZXRlIHRoZSBhYnN0cmFjdGlv
biBvZiB0aGUgd3dfbXV0ZXggaW5zaWRlIHRoZSByZXNlcnZhdGlvbiBvYmplY3QuCj4gPj4KPiA+
PiBUaGlzIGFsbG93cyB1cyB0byBhZGQgbW9yZSBoYW5kbGluZyBhbmQgZGVidWdnaW5nIHRvIHRo
ZSByZXNlcnZhdGlvbgo+ID4+IG9iamVjdCBpbiB0aGUgZnV0dXJlLgo+ID4+Cj4gPj4gU2lnbmVk
LW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+ID4g
TG9va3MgZW50aXJlbHkgbWVjaGFuaWNhbCwKPiA+IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+Cj4gPiBRdWlldGx5IG9waW5lcyBmb3Igcy9y
ZXNlcnZhdGlvbl9vYmplY3QvZG1hX3Jlc2VydmF0aW9uLwo+IAo+IEkgd2FzIHRoaW5raW5nIGFi
b3V0IHRoYXQgYXMgd2VsbCBiZWNhdXNlICJyZXNlcnZhdGlvbl9vYmplY3QiIGlzIGp1c3QgYSAK
PiByYXRoZXIgbG9uZyBuYW1lIGFuZCBub3QgdmVyeSBkZXNjcmlwdGl2ZS4KPiAKPiBCdXQgSSdt
IG5vdCBzdXJlIGlmIGRtYV9yZXNlcnZhdGlvbiBmaXRzIGVpdGhlci4gSG93IGFib3V0IHNvbWV0
aGluZyAKPiBsaWtlIGRtYV9jbnRybD8KClJlc2VydmF0aW9uIGtpbmQgb2Ygd29ya3MgYmVjYXVz
ZSBvZiBoaXN0b3JpY2FsIHVzYWdlLCBidXQgaXMgaXRzZWxmCnJhdGhlciBsb25nLiBDb250cm9s
IGRvZXNuJ3QgbWVhbiBtdWNoIHRvIG1lLiBkbWFfc2VxdWVuY2U/IE1heWJlIGp1c3QKZG1hX3N5
bmNwdCwgYXMgdGhlIHNuYXBzaG90IG9mIGZlbmNlcyBpcyBpdHNlbGYgYSBmZW5jZSAvCnN5bmNo
cm9uaXNhdGlvbiBwb2ludC4gVGhvdWdoIHRoYXQgaXMgYXQgb2RkcyB3aXRoIG90aGVyIHVzYWdl
IG9mCnN5bmNwdCwgd2UgaGF2ZSBhbiB1bm9yZGVyZWQgY29sbGVjdGlvbiBvZiBmZW5jZXMgYWNy
b3NzIG11bHRpcGxlCnRpbWVsaW5lcywgYXMgb3Bwb3NlZCB0byBhIHNpbmdsZSBwb2ludCBhbG9u
ZyBhIHRpbWVsaW5lLgoKRndpdywgd2UgdXNlIGk5MTVfYWN0aXZlIGZvciB0aGUgc2ltaWxhciBw
dXJwb3NlIG9mIHRyYWNraW5nIHRoZSBhY3RpdmUKY29sbGVjdGlvbiBvZiBmZW5jZXMsIHNvIG1h
eWJlIGRtYV9hY3RpdmU/Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=
