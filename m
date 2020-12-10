Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FDE02D58A4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Dec 2020 11:55:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4EF706653E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Dec 2020 10:55:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 406C066702; Thu, 10 Dec 2020 10:55:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5FC7E60F2C;
	Thu, 10 Dec 2020 10:55:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4617C60BD9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Dec 2020 10:55:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 32EB960F2C; Thu, 10 Dec 2020 10:55:17 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id 07B8860BD9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Dec 2020 10:55:16 +0000 (UTC)
Date: Thu, 10 Dec 2020 11:56:28 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 surenb@google.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Hridya Valsaraju <hridya@google.com>, kernel-team@android.com,
 linux-media@vger.kernel.org
Message-ID: <X9H+3AP1q39aMxeb@kroah.com>
References: <20201210044400.1080308-1-hridya@google.com>
 <b5adfe46-8615-5821-d092-2b93feed5b79@amd.com>
 <X9H0JREcdxDsMtLX@kroah.com>
 <20201210102727.GE401619@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201210102727.GE401619@phenom.ffwll.local>
X-Virus-Scanned: ClamAV using ClamSMTP
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

T24gVGh1LCBEZWMgMTAsIDIwMjAgYXQgMTE6Mjc6MjdBTSArMDEwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiBPbiBUaHUsIERlYyAxMCwgMjAyMCBhdCAxMToxMDo0NUFNICswMTAwLCBHcmVnIEtI
IHdyb3RlOgo+ID4gT24gVGh1LCBEZWMgMTAsIDIwMjAgYXQgMTA6NTg6NTBBTSArMDEwMCwgQ2hy
aXN0aWFuIEvDtm5pZyB3cm90ZToKPiA+ID4gSW4gZ2VuZXJhbCBhIGdvb2QgaWRlYSwgYnV0IEkg
aGF2ZSBhIGZldyBjb25jZXJuL2NvbW1lbnRzIGhlcmUuCj4gPiA+IAo+ID4gPiBBbSAxMC4xMi4y
MCB1bSAwNTo0MyBzY2hyaWViIEhyaWR5YSBWYWxzYXJhanU6Cj4gPiA+ID4gVGhpcyBwYXRjaCBh
bGxvd3Mgc3RhdGlzdGljcyB0byBiZSBlbmFibGVkIGZvciBlYWNoIERNQS1CVUYgaW4KPiA+ID4g
PiBzeXNmcyBieSBlbmFibGluZyB0aGUgY29uZmlnIENPTkZJR19ETUFCVUZfU1lTRlNfU1RBVFMu
Cj4gPiA+ID4gCj4gPiA+ID4gVGhlIGZvbGxvd2luZyBzdGF0cyB3aWxsIGJlIGV4cG9zZWQgYnkg
dGhlIGludGVyZmFjZToKPiA+ID4gPiAKPiA+ID4gPiAvc3lzL2tlcm5lbC9kbWFidWYvPGlub2Rl
X251bWJlcj4vZXhwb3J0ZXJfbmFtZQo+ID4gPiA+IC9zeXMva2VybmVsL2RtYWJ1Zi88aW5vZGVf
bnVtYmVyPi9zaXplCj4gPiA+ID4gL3N5cy9rZXJuZWwvZG1hYnVmLzxpbm9kZV9udW1iZXI+L2Rl
dl9tYXBfaW5mbwo+ID4gPiA+IAo+ID4gPiA+IFRoZSBpbm9kZV9udW1iZXIgaXMgdW5pcXVlIGZv
ciBlYWNoIERNQS1CVUYgYW5kIHdhcyBhZGRlZCBlYXJsaWVyIFsxXQo+ID4gPiA+IGluIG9yZGVy
IHRvIGFsbG93IHVzZXJzcGFjZSB0byB0cmFjayBETUEtQlVGIHVzYWdlIGFjcm9zcyBkaWZmZXJl
bnQKPiA+ID4gPiBwcm9jZXNzZXMuCj4gPiA+ID4gCj4gPiA+ID4gQ3VycmVudGx5LCB0aGlzIGlu
Zm9ybWF0aW9uIGlzIGV4cG9zZWQgaW4KPiA+ID4gPiAvc3lzL2tlcm5lbC9kZWJ1Zy9kbWFfYnVm
L2J1ZmluZm8uCj4gPiA+ID4gSG93ZXZlciwgc2luY2UgZGVidWdmcyBpcyBjb25zaWRlcmVkIHVu
c2FmZSB0byBiZSBtb3VudGVkIGluIHByb2R1Y3Rpb24sCj4gPiA+ID4gaXQgaXMgYmVpbmcgZHVw
bGljYXRlZCBpbiBzeXNmcy4KPiA+ID4gCj4gPiA+IE1obSwgdGhpcyBtYWtlcyBpdCBwYXJ0IG9m
IHRoZSBVQVBJLiBXaGF0IGlzIHRoZSBqdXN0aWZpY2F0aW9uIGZvciB0aGlzPwo+ID4gPiAKPiA+
ID4gSW4gb3RoZXIgd29yZHMgZG8gd2UgcmVhbGx5IG5lZWQgdGhvc2UgZGVidWcgaW5mb3JtYXRp
b24gaW4gYSBwcm9kdWN0aW9uCj4gPiA+IGVudmlyb25tZW50Pwo+ID4gCj4gPiBQcm9kdWN0aW9u
IGVudmlyb25tZW50cyBzZWVtIHRvIHdhbnQgdG8ga25vdyB3aG8gaXMgdXNpbmcgdXAgbWVtb3J5
IDopCj4gCj4gVGhpcyBvbmx5IHNob3dzIHNoYXJlZCBtZW1vcnksIHNvIGl0IGRvZXMgc21lbGwg
YSBsb3QgbGlrZSAkc3BlY2lmaWNfaXNzdWUKPiBhbmQgd2UncmUgZGVzaWduaW5nIGEgbmFycm93
IHNvbHV0aW9uIGZvciB0aGF0IGFuZCB0aGVuIGhhdmUgdG8gY2FycnkgaXQKPiBmb3JldmVyLgoK
SSB0aGluayB0aGUgImlzc3VlIiBpcyB0aGF0IHRoaXMgd2FzIGEgZmVhdHVyZSBmcm9tIGlvbiB0
aGF0IHBlb3BsZQoibWlzc2VkIiBpbiB0aGUgZG1hYnVmIG1vdmUuICBUYWtpbmcgYXdheSB0aGUg
YWJpbGl0eSB0byBzZWUgd2hhdCBraW5kCm9mIGFsbG9jYXRpb25zIHdlcmUgYmVpbmcgbWFkZSBk
aWRuJ3QgbWFrZSBhIGxvdCBvZiBkZWJ1Z2dpbmcgdG9vbHMKaGFwcHkgOigKCkJ1dCBIcmlkeWEg
a25vd3MgbW9yZSwgc2hlJ3MgYmVlbiBkZWFsaW5nIHdpdGggdGhlIHRyYW5zaXRpb24gZm9yIGEg
bG9uZwp0aW1lIG5vdy4KCj4gRS5nLiB3aHkgaXMgdGhlIGxpc3Qgb2YgYXR0YWNobWVudHMgbm90
IGEgc3lzZnMgbGluaz8gVGhhdCdzIGhvdyB3ZQo+IHVzdWFsbHkgZXhwb3NlIHN0cnVjdCBkZXZp
Y2UgKiBwb2ludGVycyBpbiBzeXNmcyB0byB1c2Vyc3BhY2UsIG5vdCBhcyBhCj4gbGlzdCBvZiB0
aGluZ3MuCgpUaGVzZSBhcmVuJ3Qgc3RydWN0IGRldmljZXMsIHNvIEkgZG9uJ3QgdW5kZXJzdGFu
ZCB0aGUgb2JqZWN0aW9uIGhlcmUuCldoZXJlIGVsc2UgY291bGQgdGhlc2UgZ28gaW4gc3lzZnM/
Cgo+IEZ1cnRoZXJtb3JlIHdlIGRvbid0IGhhdmUgdGhlIGV4cG9ydGVyIGRldmljZSBjb3ZlcmVk
IGFueXdoZXJlLCBob3cgaXMKPiB0aGF0IHRyYWNrZWQ/IFllcyBBbmRyb2lkIGp1c3QgdXNlcyBp
b24gZm9yIGFsbCBzaGFyZWQgYnVmZmVycywgYnV0IHRoYXQncwo+IG5vdCBob3cgYWxsIG9mIGxp
bnV4IHVzZXJzcGFjZSB3b3Jrcy4KCkRvIHdlIGhhdmUgdGhlIGV4cG9ydGVyIGRldmljZSBsaW5r
IGluIHRoZSBkbWFidWYgaW50ZXJmYWNlPyAgSWYgc28sCmdyZWF0LCBsZXQncyB1c2UgdGhhdCwg
YnV0IGZvciBzb21lIHJlYXNvbiBJIGRpZG4ndCB0aGluayBpdCB3YXMgdGhlcmUuCgo+IFRoZW4g
SSBndWVzcyB0aGVyZSdzIHRoZSBtbWFwcywgeW91IGNhbiBmaXNoIHRoZW0gb3V0IG9mIHByb2Nm
cy4gQSB0b29sCj4gd2hpY2ggY29sbGVjdHMgYWxsIHRoYXQgaW5mb3JtYXRpb24gbWlnaHQgYmUg
dXNlZnVsLCBqdXN0IGFzIGRlbW9uc3RyYXRpb24KPiBvZiBob3cgdGhpcyBpcyBhbGwgc3VwcG9z
ZWQgdG8gYmUgdXNlZC4KClRoZXJlJ3MgYSBzY3JpcHQgc29tZXdoZXJlIHRoYXQgZG9lcyB0aGlz
IHRvZGF5LCBhZ2FpbiwgSHJpZHlhIGtub3dzCm1vcmUuCgo+IFRoZXJlJ3MgYWxzbyBzb21lIHRo
aW5ncyB0byBtYWtlIHN1cmUgd2UncmUgYXQgbGVhc3QgaGF2aW5nIHRob3VnaHQgYWJvdXQKPiBo
b3cgb3RoZXIgdGhpbmdzIGZpdCBpbiBoZXJlLiBFLmQuIGRtYV9yZXN2IGF0dGFjaGVkIHRvIHRo
ZSBkbWEtYnVmCj4gbWF0dGVycyBpbiBnZW5lcmFsIGEgbG90LiBJdCBkb2Vzbid0IG1hdHRlciBv
biBBbmRyb2lkIGJlY2F1c2UKPiBldmVyeXRoaW5nJ3MgcGlubmVkIGFsbCB0aGUgdGltZSBhbnl3
YXkuCj4gCj4gQWxzbyBJIHRob3VnaHQgc3lzZnMgd2FzIG9uZSB2YWx1ZSBvbmUgZmlsZSwgZHVt
cGluZyBhbiBlbnRpcmUgbGlzdCBpbnRvCj4gZGV2X2luZm9fbWFwIHdpdGggcHJvcGVydGllcyB3
ZSdsbCBuZWVkIHRvIGV4dGVuZCAob25jZSB5b3UgY2FyZSBhYm91dAo+IGRtYV9yZXN2IHlvdSBh
bHNvIHdhbnQgdG8ga25vdyB3aGljaCBhdHRhY2htZW50cyBhcmUgZHluYW1pYykgZG9lcyBub3QK
PiBzbWVsbCBsaWtlIHN5c2ZzIGRlc2lnbiBhdCBhbGwuCgpzeXNmcyBpcyBvbmUgdmFsdWUgcGVy
IGZpbGUsIHdoYXQgaXMgYmVpbmcgZXhwb3J0ZWQgdGhhdCBpcyBsYXJnZXIgdGhhbgp0aGF0IGhl
cmU/ICBEaWQgSSBtaXNzIHNvbWV0aGluZyBvbiByZXZpZXc/Cgp0aGFua3MsCgpncmVnIGstaApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
