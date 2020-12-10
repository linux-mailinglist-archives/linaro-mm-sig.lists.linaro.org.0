Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A917E2D59F8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Dec 2020 13:06:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C4F2C60DC1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Dec 2020 12:06:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AEFCA6653E; Thu, 10 Dec 2020 12:06:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8ABF161939;
	Thu, 10 Dec 2020 12:06:22 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2CA3260BD9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Dec 2020 12:06:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1B1F261939; Thu, 10 Dec 2020 12:06:20 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id ADDBE60BD9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Dec 2020 12:06:18 +0000 (UTC)
Date: Thu, 10 Dec 2020 13:07:32 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID: <X9IPhEkcZO+Ut5RH@kroah.com>
References: <20201210044400.1080308-1-hridya@google.com>
 <b5adfe46-8615-5821-d092-2b93feed5b79@amd.com>
 <X9H0JREcdxDsMtLX@kroah.com>
 <20201210102727.GE401619@phenom.ffwll.local>
 <X9H+3AP1q39aMxeb@kroah.com>
 <CAKMK7uFD3fE01Li3JOpHpzP7313OT3xpcjBwzSVjrCGAmab2Zg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uFD3fE01Li3JOpHpzP7313OT3xpcjBwzSVjrCGAmab2Zg@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Android Kernel Team <kernel-team@android.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
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

T24gVGh1LCBEZWMgMTAsIDIwMjAgYXQgMTI6MjY6MDFQTSArMDEwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiBPbiBUaHUsIERlYyAxMCwgMjAyMCBhdCAxMTo1NSBBTSBHcmVnIEtIIDxncmVna2hA
bGludXhmb3VuZGF0aW9uLm9yZz4gd3JvdGU6Cj4gPgo+ID4gT24gVGh1LCBEZWMgMTAsIDIwMjAg
YXQgMTE6Mjc6MjdBTSArMDEwMCwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+ID4gT24gVGh1LCBE
ZWMgMTAsIDIwMjAgYXQgMTE6MTA6NDVBTSArMDEwMCwgR3JlZyBLSCB3cm90ZToKPiA+ID4gPiBP
biBUaHUsIERlYyAxMCwgMjAyMCBhdCAxMDo1ODo1MEFNICswMTAwLCBDaHJpc3RpYW4gS8O2bmln
IHdyb3RlOgo+ID4gPiA+ID4gSW4gZ2VuZXJhbCBhIGdvb2QgaWRlYSwgYnV0IEkgaGF2ZSBhIGZl
dyBjb25jZXJuL2NvbW1lbnRzIGhlcmUuCj4gPiA+ID4gPgo+ID4gPiA+ID4gQW0gMTAuMTIuMjAg
dW0gMDU6NDMgc2NocmllYiBIcmlkeWEgVmFsc2FyYWp1Ogo+ID4gPiA+ID4gPiBUaGlzIHBhdGNo
IGFsbG93cyBzdGF0aXN0aWNzIHRvIGJlIGVuYWJsZWQgZm9yIGVhY2ggRE1BLUJVRiBpbgo+ID4g
PiA+ID4gPiBzeXNmcyBieSBlbmFibGluZyB0aGUgY29uZmlnIENPTkZJR19ETUFCVUZfU1lTRlNf
U1RBVFMuCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IFRoZSBmb2xsb3dpbmcgc3RhdHMgd2lsbCBi
ZSBleHBvc2VkIGJ5IHRoZSBpbnRlcmZhY2U6Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IC9zeXMv
a2VybmVsL2RtYWJ1Zi88aW5vZGVfbnVtYmVyPi9leHBvcnRlcl9uYW1lCj4gPiA+ID4gPiA+IC9z
eXMva2VybmVsL2RtYWJ1Zi88aW5vZGVfbnVtYmVyPi9zaXplCj4gPiA+ID4gPiA+IC9zeXMva2Vy
bmVsL2RtYWJ1Zi88aW5vZGVfbnVtYmVyPi9kZXZfbWFwX2luZm8KPiA+ID4gPiA+ID4KPiA+ID4g
PiA+ID4gVGhlIGlub2RlX251bWJlciBpcyB1bmlxdWUgZm9yIGVhY2ggRE1BLUJVRiBhbmQgd2Fz
IGFkZGVkIGVhcmxpZXIgWzFdCj4gPiA+ID4gPiA+IGluIG9yZGVyIHRvIGFsbG93IHVzZXJzcGFj
ZSB0byB0cmFjayBETUEtQlVGIHVzYWdlIGFjcm9zcyBkaWZmZXJlbnQKPiA+ID4gPiA+ID4gcHJv
Y2Vzc2VzLgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBDdXJyZW50bHksIHRoaXMgaW5mb3JtYXRp
b24gaXMgZXhwb3NlZCBpbgo+ID4gPiA+ID4gPiAvc3lzL2tlcm5lbC9kZWJ1Zy9kbWFfYnVmL2J1
ZmluZm8uCj4gPiA+ID4gPiA+IEhvd2V2ZXIsIHNpbmNlIGRlYnVnZnMgaXMgY29uc2lkZXJlZCB1
bnNhZmUgdG8gYmUgbW91bnRlZCBpbiBwcm9kdWN0aW9uLAo+ID4gPiA+ID4gPiBpdCBpcyBiZWlu
ZyBkdXBsaWNhdGVkIGluIHN5c2ZzLgo+ID4gPiA+ID4KPiA+ID4gPiA+IE1obSwgdGhpcyBtYWtl
cyBpdCBwYXJ0IG9mIHRoZSBVQVBJLiBXaGF0IGlzIHRoZSBqdXN0aWZpY2F0aW9uIGZvciB0aGlz
Pwo+ID4gPiA+ID4KPiA+ID4gPiA+IEluIG90aGVyIHdvcmRzIGRvIHdlIHJlYWxseSBuZWVkIHRo
b3NlIGRlYnVnIGluZm9ybWF0aW9uIGluIGEgcHJvZHVjdGlvbgo+ID4gPiA+ID4gZW52aXJvbm1l
bnQ/Cj4gPiA+ID4KPiA+ID4gPiBQcm9kdWN0aW9uIGVudmlyb25tZW50cyBzZWVtIHRvIHdhbnQg
dG8ga25vdyB3aG8gaXMgdXNpbmcgdXAgbWVtb3J5IDopCj4gPiA+Cj4gPiA+IFRoaXMgb25seSBz
aG93cyBzaGFyZWQgbWVtb3J5LCBzbyBpdCBkb2VzIHNtZWxsIGEgbG90IGxpa2UgJHNwZWNpZmlj
X2lzc3VlCj4gPiA+IGFuZCB3ZSdyZSBkZXNpZ25pbmcgYSBuYXJyb3cgc29sdXRpb24gZm9yIHRo
YXQgYW5kIHRoZW4gaGF2ZSB0byBjYXJyeSBpdAo+ID4gPiBmb3JldmVyLgo+ID4KPiA+IEkgdGhp
bmsgdGhlICJpc3N1ZSIgaXMgdGhhdCB0aGlzIHdhcyBhIGZlYXR1cmUgZnJvbSBpb24gdGhhdCBw
ZW9wbGUKPiA+ICJtaXNzZWQiIGluIHRoZSBkbWFidWYgbW92ZS4gIFRha2luZyBhd2F5IHRoZSBh
YmlsaXR5IHRvIHNlZSB3aGF0IGtpbmQKPiA+IG9mIGFsbG9jYXRpb25zIHdlcmUgYmVpbmcgbWFk
ZSBkaWRuJ3QgbWFrZSBhIGxvdCBvZiBkZWJ1Z2dpbmcgdG9vbHMKPiA+IGhhcHB5IDooCj4gCj4g
SWYgdGhpcyBpcyBqdXN0IGZvciBkbWEtaGVhcHMgdGhlbiB3aHkgZG9uJ3Qgd2UgYWRkIHRoZSBz
dHVmZiBiYWNrCj4gb3ZlciB0aGVyZT8gSXQgcmVpbmZvcmNlcyBtb3JlIHRoYXQgdGhlIGFuZHJv
aWQgZ3B1IHN0YWNrIGFuZCB0aGUKPiBub24tYW5kcm9pZCBncHUgc3RhY2sgb24gbGludXggYXJl
IGZhaXJseSBkaWZmZXJlbnQgaW4gZnVuZGFtZW50YWwKPiB3YXlzLCBidXQgdGhhdCdzIG5vdCBy
ZWFsbHkgbmV3LgoKQmFjayAib3ZlciB3aGVyZSI/CgpkbWEtYnVmcyBhcmUgbm90IG9ubHkgdXNl
ZCBmb3IgdGhlIGdyYXBoaWNzIHN0YWNrIG9uIGFuZHJvaWQgZnJvbSB3aGF0IEkKY2FuIHRlbGws
IHNvIHRoaXMgc2hvdWxkbid0IGJlIGEgZ3B1LXNwZWNpZmljIGlzc3VlLgoKY29uZnVzZWQsCgpn
cmVnIGstaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
