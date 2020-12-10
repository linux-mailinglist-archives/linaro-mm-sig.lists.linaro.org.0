Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 125DD2D57E8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Dec 2020 11:10:06 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 35DB660BD9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Dec 2020 10:10:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2A4B16653E; Thu, 10 Dec 2020 10:10:05 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AFDA160F2C;
	Thu, 10 Dec 2020 10:09:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2C24A60736
 for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Dec 2020 10:09:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 06A6B60F2C; Thu, 10 Dec 2020 10:09:34 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id 1F1DA60736
 for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Dec 2020 10:09:33 +0000 (UTC)
Date: Thu, 10 Dec 2020 11:10:45 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <X9H0JREcdxDsMtLX@kroah.com>
References: <20201210044400.1080308-1-hridya@google.com>
 <b5adfe46-8615-5821-d092-2b93feed5b79@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b5adfe46-8615-5821-d092-2b93feed5b79@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: surenb@google.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 john.stultz@linaro.org, Hridya Valsaraju <hridya@google.com>,
 kernel-team@android.com, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] dmabuf: Add the capability to expose
 DMA-BUF stats in sysfs
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

T24gVGh1LCBEZWMgMTAsIDIwMjAgYXQgMTA6NTg6NTBBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBJbiBnZW5lcmFsIGEgZ29vZCBpZGVhLCBidXQgSSBoYXZlIGEgZmV3IGNvbmNl
cm4vY29tbWVudHMgaGVyZS4KPiAKPiBBbSAxMC4xMi4yMCB1bSAwNTo0MyBzY2hyaWViIEhyaWR5
YSBWYWxzYXJhanU6Cj4gPiBUaGlzIHBhdGNoIGFsbG93cyBzdGF0aXN0aWNzIHRvIGJlIGVuYWJs
ZWQgZm9yIGVhY2ggRE1BLUJVRiBpbgo+ID4gc3lzZnMgYnkgZW5hYmxpbmcgdGhlIGNvbmZpZyBD
T05GSUdfRE1BQlVGX1NZU0ZTX1NUQVRTLgo+ID4gCj4gPiBUaGUgZm9sbG93aW5nIHN0YXRzIHdp
bGwgYmUgZXhwb3NlZCBieSB0aGUgaW50ZXJmYWNlOgo+ID4gCj4gPiAvc3lzL2tlcm5lbC9kbWFi
dWYvPGlub2RlX251bWJlcj4vZXhwb3J0ZXJfbmFtZQo+ID4gL3N5cy9rZXJuZWwvZG1hYnVmLzxp
bm9kZV9udW1iZXI+L3NpemUKPiA+IC9zeXMva2VybmVsL2RtYWJ1Zi88aW5vZGVfbnVtYmVyPi9k
ZXZfbWFwX2luZm8KPiA+IAo+ID4gVGhlIGlub2RlX251bWJlciBpcyB1bmlxdWUgZm9yIGVhY2gg
RE1BLUJVRiBhbmQgd2FzIGFkZGVkIGVhcmxpZXIgWzFdCj4gPiBpbiBvcmRlciB0byBhbGxvdyB1
c2Vyc3BhY2UgdG8gdHJhY2sgRE1BLUJVRiB1c2FnZSBhY3Jvc3MgZGlmZmVyZW50Cj4gPiBwcm9j
ZXNzZXMuCj4gPiAKPiA+IEN1cnJlbnRseSwgdGhpcyBpbmZvcm1hdGlvbiBpcyBleHBvc2VkIGlu
Cj4gPiAvc3lzL2tlcm5lbC9kZWJ1Zy9kbWFfYnVmL2J1ZmluZm8uCj4gPiBIb3dldmVyLCBzaW5j
ZSBkZWJ1Z2ZzIGlzIGNvbnNpZGVyZWQgdW5zYWZlIHRvIGJlIG1vdW50ZWQgaW4gcHJvZHVjdGlv
biwKPiA+IGl0IGlzIGJlaW5nIGR1cGxpY2F0ZWQgaW4gc3lzZnMuCj4gCj4gTWhtLCB0aGlzIG1h
a2VzIGl0IHBhcnQgb2YgdGhlIFVBUEkuIFdoYXQgaXMgdGhlIGp1c3RpZmljYXRpb24gZm9yIHRo
aXM/Cj4gCj4gSW4gb3RoZXIgd29yZHMgZG8gd2UgcmVhbGx5IG5lZWQgdGhvc2UgZGVidWcgaW5m
b3JtYXRpb24gaW4gYSBwcm9kdWN0aW9uCj4gZW52aXJvbm1lbnQ/CgpQcm9kdWN0aW9uIGVudmly
b25tZW50cyBzZWVtIHRvIHdhbnQgdG8ga25vdyB3aG8gaXMgdXNpbmcgdXAgbWVtb3J5IDopCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xp
c3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
