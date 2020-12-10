Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3EF2D5B52
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Dec 2020 14:11:06 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4901266702
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Dec 2020 13:11:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 30F8360736; Thu, 10 Dec 2020 13:11:05 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2A1D960DC1;
	Thu, 10 Dec 2020 13:10:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0AE8360736
 for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Dec 2020 13:10:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F356160DC1; Thu, 10 Dec 2020 13:10:23 +0000 (UTC)
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by lists.linaro.org (Postfix) with ESMTPS id A26A160736
 for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Dec 2020 13:10:22 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id b18so4772639ots.0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Dec 2020 05:10:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=5SZx0SF1+bmdIPGDx8XS9Yvh6cMFc1HMujYWwx4oFXo=;
 b=YdAfXF46rDQ5fW7wYbfjj0wGOTRL1MprMRjVfriu3TYwVb8N82fkAuJzgRhsuxa0t3
 WV0G+Cx61hVCpPKjv90nc15zFOUcuTmlxp9kEF+5UCkybz0ObY6jG8debuT2HBofWQz9
 kG7XwvnOlxMmHBNdK9ERHc6e3cf9EsEIZvEOMRd41IlAg5m2tpa8jomHgkdHr+7Bc2x3
 ikV577o3YMnU5pBYX/Qc68H/DEX8cOuved9RBSJzhgI9wpDKdEh9/mfl7d9cPIkjBa8r
 0npF1HiCeSNEqEt9dCnUZbHLRbGEKBp/SPIsgz+GhcKjqSARapyBEUrKUxL8h7MzI7x4
 mqeg==
X-Gm-Message-State: AOAM530gh2mLTE2jNlCi80Q90RH/dL91vPgfw4SiX0d8eMvxRj1RsGSw
 dsWtNy2u9b85VcTyR2jaumB+OCtAoCBQBMmVf5Cqww==
X-Google-Smtp-Source: ABdhPJwe0G/fIm4wrIEbslkY/Xrvlb1182PcLJFrYAgq3Tmq7oxccHPXXb0WkMQH6isTqYmJy19qnmcJPRyIsmZ6nTE=
X-Received: by 2002:a9d:23ca:: with SMTP id t68mr5751241otb.281.1607605822145; 
 Thu, 10 Dec 2020 05:10:22 -0800 (PST)
MIME-Version: 1.0
References: <20201210044400.1080308-1-hridya@google.com>
 <b5adfe46-8615-5821-d092-2b93feed5b79@amd.com>
 <X9H0JREcdxDsMtLX@kroah.com> <20201210102727.GE401619@phenom.ffwll.local>
 <X9H+3AP1q39aMxeb@kroah.com>
 <CAKMK7uFD3fE01Li3JOpHpzP7313OT3xpcjBwzSVjrCGAmab2Zg@mail.gmail.com>
 <X9IPhEkcZO+Ut5RH@kroah.com>
In-Reply-To: <X9IPhEkcZO+Ut5RH@kroah.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 10 Dec 2020 14:10:10 +0100
Message-ID: <CAKMK7uEM636NjEcxLfsKJa9H71i0mkQ3dsT3yWwHTcVFk4r+Sg@mail.gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Android Kernel Team <kernel-team@android.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
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

T24gVGh1LCBEZWMgMTAsIDIwMjAgYXQgMTowNiBQTSBHcmVnIEtIIDxncmVna2hAbGludXhmb3Vu
ZGF0aW9uLm9yZz4gd3JvdGU6Cj4KPiBPbiBUaHUsIERlYyAxMCwgMjAyMCBhdCAxMjoyNjowMVBN
ICswMTAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4gT24gVGh1LCBEZWMgMTAsIDIwMjAgYXQg
MTE6NTUgQU0gR3JlZyBLSCA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+IHdyb3RlOgo+ID4g
Pgo+ID4gPiBPbiBUaHUsIERlYyAxMCwgMjAyMCBhdCAxMToyNzoyN0FNICswMTAwLCBEYW5pZWwg
VmV0dGVyIHdyb3RlOgo+ID4gPiA+IE9uIFRodSwgRGVjIDEwLCAyMDIwIGF0IDExOjEwOjQ1QU0g
KzAxMDAsIEdyZWcgS0ggd3JvdGU6Cj4gPiA+ID4gPiBPbiBUaHUsIERlYyAxMCwgMjAyMCBhdCAx
MDo1ODo1MEFNICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+ID4gPiA+ID4gPiBJbiBn
ZW5lcmFsIGEgZ29vZCBpZGVhLCBidXQgSSBoYXZlIGEgZmV3IGNvbmNlcm4vY29tbWVudHMgaGVy
ZS4KPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gQW0gMTAuMTIuMjAgdW0gMDU6NDMgc2NocmllYiBI
cmlkeWEgVmFsc2FyYWp1Ogo+ID4gPiA+ID4gPiA+IFRoaXMgcGF0Y2ggYWxsb3dzIHN0YXRpc3Rp
Y3MgdG8gYmUgZW5hYmxlZCBmb3IgZWFjaCBETUEtQlVGIGluCj4gPiA+ID4gPiA+ID4gc3lzZnMg
YnkgZW5hYmxpbmcgdGhlIGNvbmZpZyBDT05GSUdfRE1BQlVGX1NZU0ZTX1NUQVRTLgo+ID4gPiA+
ID4gPiA+Cj4gPiA+ID4gPiA+ID4gVGhlIGZvbGxvd2luZyBzdGF0cyB3aWxsIGJlIGV4cG9zZWQg
YnkgdGhlIGludGVyZmFjZToKPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IC9zeXMva2VybmVs
L2RtYWJ1Zi88aW5vZGVfbnVtYmVyPi9leHBvcnRlcl9uYW1lCj4gPiA+ID4gPiA+ID4gL3N5cy9r
ZXJuZWwvZG1hYnVmLzxpbm9kZV9udW1iZXI+L3NpemUKPiA+ID4gPiA+ID4gPiAvc3lzL2tlcm5l
bC9kbWFidWYvPGlub2RlX251bWJlcj4vZGV2X21hcF9pbmZvCj4gPiA+ID4gPiA+ID4KPiA+ID4g
PiA+ID4gPiBUaGUgaW5vZGVfbnVtYmVyIGlzIHVuaXF1ZSBmb3IgZWFjaCBETUEtQlVGIGFuZCB3
YXMgYWRkZWQgZWFybGllciBbMV0KPiA+ID4gPiA+ID4gPiBpbiBvcmRlciB0byBhbGxvdyB1c2Vy
c3BhY2UgdG8gdHJhY2sgRE1BLUJVRiB1c2FnZSBhY3Jvc3MgZGlmZmVyZW50Cj4gPiA+ID4gPiA+
ID4gcHJvY2Vzc2VzLgo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gQ3VycmVudGx5LCB0aGlz
IGluZm9ybWF0aW9uIGlzIGV4cG9zZWQgaW4KPiA+ID4gPiA+ID4gPiAvc3lzL2tlcm5lbC9kZWJ1
Zy9kbWFfYnVmL2J1ZmluZm8uCj4gPiA+ID4gPiA+ID4gSG93ZXZlciwgc2luY2UgZGVidWdmcyBp
cyBjb25zaWRlcmVkIHVuc2FmZSB0byBiZSBtb3VudGVkIGluIHByb2R1Y3Rpb24sCj4gPiA+ID4g
PiA+ID4gaXQgaXMgYmVpbmcgZHVwbGljYXRlZCBpbiBzeXNmcy4KPiA+ID4gPiA+ID4KPiA+ID4g
PiA+ID4gTWhtLCB0aGlzIG1ha2VzIGl0IHBhcnQgb2YgdGhlIFVBUEkuIFdoYXQgaXMgdGhlIGp1
c3RpZmljYXRpb24gZm9yIHRoaXM/Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IEluIG90aGVyIHdv
cmRzIGRvIHdlIHJlYWxseSBuZWVkIHRob3NlIGRlYnVnIGluZm9ybWF0aW9uIGluIGEgcHJvZHVj
dGlvbgo+ID4gPiA+ID4gPiBlbnZpcm9ubWVudD8KPiA+ID4gPiA+Cj4gPiA+ID4gPiBQcm9kdWN0
aW9uIGVudmlyb25tZW50cyBzZWVtIHRvIHdhbnQgdG8ga25vdyB3aG8gaXMgdXNpbmcgdXAgbWVt
b3J5IDopCj4gPiA+ID4KPiA+ID4gPiBUaGlzIG9ubHkgc2hvd3Mgc2hhcmVkIG1lbW9yeSwgc28g
aXQgZG9lcyBzbWVsbCBhIGxvdCBsaWtlICRzcGVjaWZpY19pc3N1ZQo+ID4gPiA+IGFuZCB3ZSdy
ZSBkZXNpZ25pbmcgYSBuYXJyb3cgc29sdXRpb24gZm9yIHRoYXQgYW5kIHRoZW4gaGF2ZSB0byBj
YXJyeSBpdAo+ID4gPiA+IGZvcmV2ZXIuCj4gPiA+Cj4gPiA+IEkgdGhpbmsgdGhlICJpc3N1ZSIg
aXMgdGhhdCB0aGlzIHdhcyBhIGZlYXR1cmUgZnJvbSBpb24gdGhhdCBwZW9wbGUKPiA+ID4gIm1p
c3NlZCIgaW4gdGhlIGRtYWJ1ZiBtb3ZlLiAgVGFraW5nIGF3YXkgdGhlIGFiaWxpdHkgdG8gc2Vl
IHdoYXQga2luZAo+ID4gPiBvZiBhbGxvY2F0aW9ucyB3ZXJlIGJlaW5nIG1hZGUgZGlkbid0IG1h
a2UgYSBsb3Qgb2YgZGVidWdnaW5nIHRvb2xzCj4gPiA+IGhhcHB5IDooCj4gPgo+ID4gSWYgdGhp
cyBpcyBqdXN0IGZvciBkbWEtaGVhcHMgdGhlbiB3aHkgZG9uJ3Qgd2UgYWRkIHRoZSBzdHVmZiBi
YWNrCj4gPiBvdmVyIHRoZXJlPyBJdCByZWluZm9yY2VzIG1vcmUgdGhhdCB0aGUgYW5kcm9pZCBn
cHUgc3RhY2sgYW5kIHRoZQo+ID4gbm9uLWFuZHJvaWQgZ3B1IHN0YWNrIG9uIGxpbnV4IGFyZSBm
YWlybHkgZGlmZmVyZW50IGluIGZ1bmRhbWVudGFsCj4gPiB3YXlzLCBidXQgdGhhdCdzIG5vdCBy
ZWFsbHkgbmV3Lgo+Cj4gQmFjayAib3ZlciB3aGVyZSI/Cj4KPiBkbWEtYnVmcyBhcmUgbm90IG9u
bHkgdXNlZCBmb3IgdGhlIGdyYXBoaWNzIHN0YWNrIG9uIGFuZHJvaWQgZnJvbSB3aGF0IEkKPiBj
YW4gdGVsbCwgc28gdGhpcyBzaG91bGRuJ3QgYmUgYSBncHUtc3BlY2lmaWMgaXNzdWUuCgpkbWEt
YnVmIGhlYXBzIGV4aXN0IGJlY2F1c2UgYW5kcm9pZCwgbW9zdGx5IGJlY2F1c2UgZ29vZ2xlIG1h
bmRhdGVzCml0LiBUaGVyZSdzIG5vdCBhIHdob2xlIGxvdCAobWVhbmluZyB6ZXJvKSBvZiBhY3R1
YWxseSBvcGVuIGdwdSBzdGFja3MKYXJvdW5kIHRoYXQgcnVuIG9uIGFuZHJvaWQgYW5kIHVzZSBk
bWEtYnVmIGhlYXBzIGxpa2UgYXBwcm92ZWQgZ29vZ2xlCnN5c3RlbXMsIGxhcmdlbHkgYmVjYXVz
ZSB0aGUgZ3JhbGxvYyBpbXBsZW1lbnRhdGlvbiBpbiBtZXNhIGp1c3QKZG9lc250LgoKU28gaWYg
YW5kcm9pZCBuZWVkcyBzb21lIHF1aWNrIGRlYnVnIG91dHB1dCBpbiBzeXNmcywgd2UgY2FuIGp1
c3QgYWRkCnRoYXQgaW4gZG1hLWJ1ZiBoZWFwcywgZm9yIGFuZHJvaWQgb25seSwgcHJvYmxlbSBz
b2x2ZWQuIEFuZCBtdWNoIGxlc3MKYW5ub3lpbmcgcmV2aWV3IHRvIG1ha2Ugc3VyZSBpdCBhY3R1
YWxseSBmaXRzIGludG8gdGhlIHdpZGVyIGVjb3N5c3RlbQpiZWNhdXNlIGFzLWlzIChhbmQgSSdt
IG5vdCBzZWVpbmcgdGhhdCBjaGFuY2UgYW55dGltZSBzb29uKSwgZG1hLWJ1ZgpoZWFwcyBpcyBm
b3IgYW5kcm9pZCBvbmx5LiBkbWEtYnVmIGF0IGxhcmdlIGlzbid0LCBzbyBtZXJnaW5nIGEgZGVi
dWcKb3V0cHV0IHN5c2ZzIGFwaSB0aGF0J3MganVzdCBmb3IgYW5kcm9pZCBidXQgbWlzc2VzIGEg
dG9uIG9mIHRoZSBtb3JlCmdlbmVyaWMgZmVhdHVyZXMgYW5kIHNlbWFudGljcyBvZiBkbWEtYnVm
IGlzIG5vdCBncmVhdC4KLURhbmllbAoKLURhbmllbAotLQpEYW5pZWwgVmV0dGVyClNvZnR3YXJl
IEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5s
aW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
