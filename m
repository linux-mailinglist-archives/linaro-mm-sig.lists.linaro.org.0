Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE2B2D592B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Dec 2020 12:26:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 02C386670B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Dec 2020 11:26:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E7A9B66713; Thu, 10 Dec 2020 11:26:56 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BA76660BD9;
	Thu, 10 Dec 2020 11:26:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 89DBC60DC1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Dec 2020 11:26:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7EA8166539; Thu, 10 Dec 2020 11:26:15 +0000 (UTC)
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by lists.linaro.org (Postfix) with ESMTPS id A304260DC1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Dec 2020 11:26:13 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id w124so2226124oia.6
 for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Dec 2020 03:26:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=26Ds+xjLYxlyiDrAw+q/Gft3jO8RNSIH1EaBVr3YRWw=;
 b=HRNcY4inMl1jLIon7oBNPJZlP3I3dWoQwIQ5b7m7fPli/JRY78xBkDMu+mLsa7seTW
 otkgdqHyYg06kYQ+WzeNO01wOXvMud8v6XNg+9ODsa769FvmPO2Kndynh9JschUKEA4c
 +5UI+FKV7Uy39IRynYb1i2oq7oBf9S/kCtq4Gq0TSaoJ5feXhXUz2leh+bzW/vfEoN+r
 YKXvM3k4CTnNonMUvo+otixZ3nf5pzo6qX3YOYLc80yUjiLxV/U2JAbxr1W83EzHXerb
 zA36t0Ul1ivSfvEkDbw9kPO9OfqU2+OKhUMprZQT6ZHapKxWrECTkVRc2CxNKIY2/vAI
 LqRA==
X-Gm-Message-State: AOAM532/UhJkx5hUQ3jlCS0ZFzhPn7AzLbHwxfD2Ab3Mtn5jiaZWH9bV
 WJgFXwtNsX9Olw+tqqgqUEB3WDJVmiL1pnTGdyqecQ==
X-Google-Smtp-Source: ABdhPJwbfyYDyl38Hj6hY63Lt/8OMxO1ziTnn78ExJw8HG0XQ5S0YP1OIT0YrNdt1q0dNRR7Pcbp1BfkD8VJOBGCCmQ=
X-Received: by 2002:aca:4d08:: with SMTP id a8mr5091494oib.128.1607599572945; 
 Thu, 10 Dec 2020 03:26:12 -0800 (PST)
MIME-Version: 1.0
References: <20201210044400.1080308-1-hridya@google.com>
 <b5adfe46-8615-5821-d092-2b93feed5b79@amd.com>
 <X9H0JREcdxDsMtLX@kroah.com> <20201210102727.GE401619@phenom.ffwll.local>
 <X9H+3AP1q39aMxeb@kroah.com>
In-Reply-To: <X9H+3AP1q39aMxeb@kroah.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 10 Dec 2020 12:26:01 +0100
Message-ID: <CAKMK7uFD3fE01Li3JOpHpzP7313OT3xpcjBwzSVjrCGAmab2Zg@mail.gmail.com>
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

T24gVGh1LCBEZWMgMTAsIDIwMjAgYXQgMTE6NTUgQU0gR3JlZyBLSCA8Z3JlZ2toQGxpbnV4Zm91
bmRhdGlvbi5vcmc+IHdyb3RlOgo+Cj4gT24gVGh1LCBEZWMgMTAsIDIwMjAgYXQgMTE6Mjc6MjdB
TSArMDEwMCwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+IE9uIFRodSwgRGVjIDEwLCAyMDIwIGF0
IDExOjEwOjQ1QU0gKzAxMDAsIEdyZWcgS0ggd3JvdGU6Cj4gPiA+IE9uIFRodSwgRGVjIDEwLCAy
MDIwIGF0IDEwOjU4OjUwQU0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gPiA+ID4g
SW4gZ2VuZXJhbCBhIGdvb2QgaWRlYSwgYnV0IEkgaGF2ZSBhIGZldyBjb25jZXJuL2NvbW1lbnRz
IGhlcmUuCj4gPiA+ID4KPiA+ID4gPiBBbSAxMC4xMi4yMCB1bSAwNTo0MyBzY2hyaWViIEhyaWR5
YSBWYWxzYXJhanU6Cj4gPiA+ID4gPiBUaGlzIHBhdGNoIGFsbG93cyBzdGF0aXN0aWNzIHRvIGJl
IGVuYWJsZWQgZm9yIGVhY2ggRE1BLUJVRiBpbgo+ID4gPiA+ID4gc3lzZnMgYnkgZW5hYmxpbmcg
dGhlIGNvbmZpZyBDT05GSUdfRE1BQlVGX1NZU0ZTX1NUQVRTLgo+ID4gPiA+ID4KPiA+ID4gPiA+
IFRoZSBmb2xsb3dpbmcgc3RhdHMgd2lsbCBiZSBleHBvc2VkIGJ5IHRoZSBpbnRlcmZhY2U6Cj4g
PiA+ID4gPgo+ID4gPiA+ID4gL3N5cy9rZXJuZWwvZG1hYnVmLzxpbm9kZV9udW1iZXI+L2V4cG9y
dGVyX25hbWUKPiA+ID4gPiA+IC9zeXMva2VybmVsL2RtYWJ1Zi88aW5vZGVfbnVtYmVyPi9zaXpl
Cj4gPiA+ID4gPiAvc3lzL2tlcm5lbC9kbWFidWYvPGlub2RlX251bWJlcj4vZGV2X21hcF9pbmZv
Cj4gPiA+ID4gPgo+ID4gPiA+ID4gVGhlIGlub2RlX251bWJlciBpcyB1bmlxdWUgZm9yIGVhY2gg
RE1BLUJVRiBhbmQgd2FzIGFkZGVkIGVhcmxpZXIgWzFdCj4gPiA+ID4gPiBpbiBvcmRlciB0byBh
bGxvdyB1c2Vyc3BhY2UgdG8gdHJhY2sgRE1BLUJVRiB1c2FnZSBhY3Jvc3MgZGlmZmVyZW50Cj4g
PiA+ID4gPiBwcm9jZXNzZXMuCj4gPiA+ID4gPgo+ID4gPiA+ID4gQ3VycmVudGx5LCB0aGlzIGlu
Zm9ybWF0aW9uIGlzIGV4cG9zZWQgaW4KPiA+ID4gPiA+IC9zeXMva2VybmVsL2RlYnVnL2RtYV9i
dWYvYnVmaW5mby4KPiA+ID4gPiA+IEhvd2V2ZXIsIHNpbmNlIGRlYnVnZnMgaXMgY29uc2lkZXJl
ZCB1bnNhZmUgdG8gYmUgbW91bnRlZCBpbiBwcm9kdWN0aW9uLAo+ID4gPiA+ID4gaXQgaXMgYmVp
bmcgZHVwbGljYXRlZCBpbiBzeXNmcy4KPiA+ID4gPgo+ID4gPiA+IE1obSwgdGhpcyBtYWtlcyBp
dCBwYXJ0IG9mIHRoZSBVQVBJLiBXaGF0IGlzIHRoZSBqdXN0aWZpY2F0aW9uIGZvciB0aGlzPwo+
ID4gPiA+Cj4gPiA+ID4gSW4gb3RoZXIgd29yZHMgZG8gd2UgcmVhbGx5IG5lZWQgdGhvc2UgZGVi
dWcgaW5mb3JtYXRpb24gaW4gYSBwcm9kdWN0aW9uCj4gPiA+ID4gZW52aXJvbm1lbnQ/Cj4gPiA+
Cj4gPiA+IFByb2R1Y3Rpb24gZW52aXJvbm1lbnRzIHNlZW0gdG8gd2FudCB0byBrbm93IHdobyBp
cyB1c2luZyB1cCBtZW1vcnkgOikKPiA+Cj4gPiBUaGlzIG9ubHkgc2hvd3Mgc2hhcmVkIG1lbW9y
eSwgc28gaXQgZG9lcyBzbWVsbCBhIGxvdCBsaWtlICRzcGVjaWZpY19pc3N1ZQo+ID4gYW5kIHdl
J3JlIGRlc2lnbmluZyBhIG5hcnJvdyBzb2x1dGlvbiBmb3IgdGhhdCBhbmQgdGhlbiBoYXZlIHRv
IGNhcnJ5IGl0Cj4gPiBmb3JldmVyLgo+Cj4gSSB0aGluayB0aGUgImlzc3VlIiBpcyB0aGF0IHRo
aXMgd2FzIGEgZmVhdHVyZSBmcm9tIGlvbiB0aGF0IHBlb3BsZQo+ICJtaXNzZWQiIGluIHRoZSBk
bWFidWYgbW92ZS4gIFRha2luZyBhd2F5IHRoZSBhYmlsaXR5IHRvIHNlZSB3aGF0IGtpbmQKPiBv
ZiBhbGxvY2F0aW9ucyB3ZXJlIGJlaW5nIG1hZGUgZGlkbid0IG1ha2UgYSBsb3Qgb2YgZGVidWdn
aW5nIHRvb2xzCj4gaGFwcHkgOigKCklmIHRoaXMgaXMganVzdCBmb3IgZG1hLWhlYXBzIHRoZW4g
d2h5IGRvbid0IHdlIGFkZCB0aGUgc3R1ZmYgYmFjawpvdmVyIHRoZXJlPyBJdCByZWluZm9yY2Vz
IG1vcmUgdGhhdCB0aGUgYW5kcm9pZCBncHUgc3RhY2sgYW5kIHRoZQpub24tYW5kcm9pZCBncHUg
c3RhY2sgb24gbGludXggYXJlIGZhaXJseSBkaWZmZXJlbnQgaW4gZnVuZGFtZW50YWwKd2F5cywg
YnV0IHRoYXQncyBub3QgcmVhbGx5IG5ldy4KLURhbmllbAoKPiBCdXQgSHJpZHlhIGtub3dzIG1v
cmUsIHNoZSdzIGJlZW4gZGVhbGluZyB3aXRoIHRoZSB0cmFuc2l0aW9uIGZvciBhIGxvbmcKPiB0
aW1lIG5vdy4KPgo+ID4gRS5nLiB3aHkgaXMgdGhlIGxpc3Qgb2YgYXR0YWNobWVudHMgbm90IGEg
c3lzZnMgbGluaz8gVGhhdCdzIGhvdyB3ZQo+ID4gdXN1YWxseSBleHBvc2Ugc3RydWN0IGRldmlj
ZSAqIHBvaW50ZXJzIGluIHN5c2ZzIHRvIHVzZXJzcGFjZSwgbm90IGFzIGEKPiA+IGxpc3Qgb2Yg
dGhpbmdzLgo+Cj4gVGhlc2UgYXJlbid0IHN0cnVjdCBkZXZpY2VzLCBzbyBJIGRvbid0IHVuZGVy
c3RhbmQgdGhlIG9iamVjdGlvbiBoZXJlLgo+IFdoZXJlIGVsc2UgY291bGQgdGhlc2UgZ28gaW4g
c3lzZnM/Cj4KPiA+IEZ1cnRoZXJtb3JlIHdlIGRvbid0IGhhdmUgdGhlIGV4cG9ydGVyIGRldmlj
ZSBjb3ZlcmVkIGFueXdoZXJlLCBob3cgaXMKPiA+IHRoYXQgdHJhY2tlZD8gWWVzIEFuZHJvaWQg
anVzdCB1c2VzIGlvbiBmb3IgYWxsIHNoYXJlZCBidWZmZXJzLCBidXQgdGhhdCdzCj4gPiBub3Qg
aG93IGFsbCBvZiBsaW51eCB1c2Vyc3BhY2Ugd29ya3MuCj4KPiBEbyB3ZSBoYXZlIHRoZSBleHBv
cnRlciBkZXZpY2UgbGluayBpbiB0aGUgZG1hYnVmIGludGVyZmFjZT8gIElmIHNvLAo+IGdyZWF0
LCBsZXQncyB1c2UgdGhhdCwgYnV0IGZvciBzb21lIHJlYXNvbiBJIGRpZG4ndCB0aGluayBpdCB3
YXMgdGhlcmUuCj4KPiA+IFRoZW4gSSBndWVzcyB0aGVyZSdzIHRoZSBtbWFwcywgeW91IGNhbiBm
aXNoIHRoZW0gb3V0IG9mIHByb2Nmcy4gQSB0b29sCj4gPiB3aGljaCBjb2xsZWN0cyBhbGwgdGhh
dCBpbmZvcm1hdGlvbiBtaWdodCBiZSB1c2VmdWwsIGp1c3QgYXMgZGVtb25zdHJhdGlvbgo+ID4g
b2YgaG93IHRoaXMgaXMgYWxsIHN1cHBvc2VkIHRvIGJlIHVzZWQuCj4KPiBUaGVyZSdzIGEgc2Ny
aXB0IHNvbWV3aGVyZSB0aGF0IGRvZXMgdGhpcyB0b2RheSwgYWdhaW4sIEhyaWR5YSBrbm93cwo+
IG1vcmUuCj4KPiA+IFRoZXJlJ3MgYWxzbyBzb21lIHRoaW5ncyB0byBtYWtlIHN1cmUgd2UncmUg
YXQgbGVhc3QgaGF2aW5nIHRob3VnaHQgYWJvdXQKPiA+IGhvdyBvdGhlciB0aGluZ3MgZml0IGlu
IGhlcmUuIEUuZC4gZG1hX3Jlc3YgYXR0YWNoZWQgdG8gdGhlIGRtYS1idWYKPiA+IG1hdHRlcnMg
aW4gZ2VuZXJhbCBhIGxvdC4gSXQgZG9lc24ndCBtYXR0ZXIgb24gQW5kcm9pZCBiZWNhdXNlCj4g
PiBldmVyeXRoaW5nJ3MgcGlubmVkIGFsbCB0aGUgdGltZSBhbnl3YXkuCj4gPgo+ID4gQWxzbyBJ
IHRob3VnaHQgc3lzZnMgd2FzIG9uZSB2YWx1ZSBvbmUgZmlsZSwgZHVtcGluZyBhbiBlbnRpcmUg
bGlzdCBpbnRvCj4gPiBkZXZfaW5mb19tYXAgd2l0aCBwcm9wZXJ0aWVzIHdlJ2xsIG5lZWQgdG8g
ZXh0ZW5kIChvbmNlIHlvdSBjYXJlIGFib3V0Cj4gPiBkbWFfcmVzdiB5b3UgYWxzbyB3YW50IHRv
IGtub3cgd2hpY2ggYXR0YWNobWVudHMgYXJlIGR5bmFtaWMpIGRvZXMgbm90Cj4gPiBzbWVsbCBs
aWtlIHN5c2ZzIGRlc2lnbiBhdCBhbGwuCj4KPiBzeXNmcyBpcyBvbmUgdmFsdWUgcGVyIGZpbGUs
IHdoYXQgaXMgYmVpbmcgZXhwb3J0ZWQgdGhhdCBpcyBsYXJnZXIgdGhhbgo+IHRoYXQgaGVyZT8g
IERpZCBJIG1pc3Mgc29tZXRoaW5nIG9uIHJldmlldz8KPgo+IHRoYW5rcywKPgo+IGdyZWcgay1o
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBkcmkt
ZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCgoK
Ci0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpo
dHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
YXJvLW1tLXNpZwo=
