Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 17787389F2B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 09:55:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 431436116F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 07:55:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 26AF061170; Thu, 20 May 2021 07:55:36 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2B277610D0;
	Thu, 20 May 2021 07:55:34 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E474460694
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 07:55:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E0A24610D0; Thu, 20 May 2021 07:55:32 +0000 (UTC)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
 [209.85.210.52])
 by lists.linaro.org (Postfix) with ESMTPS id DB3B260694
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 07:55:30 +0000 (UTC)
Received: by mail-ot1-f52.google.com with SMTP id
 g7-20020a9d12870000b0290328b1342b73so6252654otg.9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 00:55:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=7VsX7/Yz8gqq5F5QEcaTsRmC1RVegDqVZLxieNcvL5Y=;
 b=a/Tz6gVwAOCMl1U31XbJwz20OWk9IAZsktmDv5Gj+dqcefIzeuJ3KSa4mgmQRQVlwq
 oCvt2Jry/uKyMhMHZYbCvoeG2kyr0iFlZeMUTSpCI/++fyCiAuXYZQzUBeCzoGYwtIdi
 GWXzAaG8gTPNTJTRaxDqPyBImkKyRVb0pOlfw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=7VsX7/Yz8gqq5F5QEcaTsRmC1RVegDqVZLxieNcvL5Y=;
 b=DKP02i/n8yjdp5mq/vWecp3prBScKJPMRkbXQsLensVkNNumgUH3P06+y39+sMODfK
 lFMZxOlPKu3fjUsr8jWE6W2h61/qOAVg2djrJazBeQkppKiPQJXj2hem8C6njxTUqD/O
 M8BM3zzlHp+S4vAuGoGfp7QET3flCpwxZYh/CbzmQvuuy/C+ELnRblOtEdy/rPy2k8vH
 4f9hluxUg7JbQ1k4WabRok+oKkg4cMVzTXMQRV4B3lxKgSivXmmRamJDdx7aY3hfnFUs
 H0P9Hw/AFN78R9wUgQ9BPWHeD8U/TpZPBxnjAo9Ar0rHCgvdpjMX70mFXCKvt8ewTdFJ
 SQ1g==
X-Gm-Message-State: AOAM530qhLiYYWhCm2b+GuNLF7POEwEkErfIcCmZmCCCetBlWu5bFMSm
 VDWATmOIUO3VeLXoRb6Tt9Fm1UN0wOLd+lDXQbq3aw==
X-Google-Smtp-Source: ABdhPJw5oxqOn0U5fVq3qtSCcJm4kDUr02ifSMeE3D/j/nbnWJxtqoD/DWDHCg+55DhKPZAvCoXZl4teZNeKUdtM1sI=
X-Received: by 2002:a9d:4101:: with SMTP id o1mr2915523ote.281.1621497330332; 
 Thu, 20 May 2021 00:55:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210517141129.2225-1-christian.koenig@amd.com>
 <YKKF4jOvM4gJT6a4@phenom.ffwll.local>
 <5a3e9500-9d6b-a865-5385-fde43da2bf66@gmail.com>
 <CAKMK7uF=y44e9-0-4MBj3jRBdCqMaLgKutTMeBWCbySRnPR4KQ@mail.gmail.com>
 <CAOFGe960UMe4=Xxcoha9R2Y74ma3Pp4Z0DF6PM+SJ2sjq2DBXg@mail.gmail.com>
 <CAKMK7uGtTT+59hRi3PB1WHPES3YJAPYBvbT74vo9PApNE0i7MQ@mail.gmail.com>
 <fee06c2d-27fb-1af4-6222-8f277b36c951@gmail.com>
 <CAKMK7uHLipx_oH-s5PB6pUUZ_JXCyciaY7sDLfK__-2fvSPCKA@mail.gmail.com>
 <f2eb6751-2f82-9b23-f57e-548de5b729de@gmail.com>
 <CAKMK7uHdsGjADQ9zwgrYsuhHdxFGkuH--DdOsaqej6OD1AbX-w@mail.gmail.com>
 <CAOFGe97FDc7Y9APymQQZZMApDXsJkbcS0N5jh+3s-w-Ligipug@mail.gmail.com>
 <14524566-8854-4bc0-9f70-b7219c9fccfc@daenzer.net>
 <CAOFGe96VttW2VzAnx13ZXLBGcEDJMehGuOFifcr+pcbEOa-Brw@mail.gmail.com>
 <6f3e2628-7b39-417c-3bd2-c837c5367458@daenzer.net>
In-Reply-To: <6f3e2628-7b39-417c-3bd2-c837c5367458@daenzer.net>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 20 May 2021 09:55:19 +0200
Message-ID: <CAKMK7uFMQGth19OjWmeNGTeVFoAqxK2tYXYrvme+NuCSNLxLUQ@mail.gmail.com>
To: =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC] Add DMA_RESV_USAGE flags
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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
Cc: "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>, dri-devel <dri-devel@lists.freedesktop.org>,
 Jason Ekstrand <jason@jlekstrand.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gV2VkLCBNYXkgMTksIDIwMjEgYXQgNTo0OCBQTSBNaWNoZWwgRMOkbnplciA8bWljaGVsQGRh
ZW56ZXIubmV0PiB3cm90ZToKPgo+IE9uIDIwMjEtMDUtMTkgNToyMSBwLm0uLCBKYXNvbiBFa3N0
cmFuZCB3cm90ZToKPiA+IE9uIFdlZCwgTWF5IDE5LCAyMDIxIGF0IDU6NTIgQU0gTWljaGVsIETD
pG56ZXIgPG1pY2hlbEBkYWVuemVyLm5ldD4gd3JvdGU6Cj4gPj4KPiA+PiBPbiAyMDIxLTA1LTE5
IDEyOjA2IGEubS4sIEphc29uIEVrc3RyYW5kIHdyb3RlOgo+ID4+PiBPbiBUdWUsIE1heSAxOCwg
MjAyMSBhdCA0OjE3IFBNIERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4gd3JvdGU6Cj4g
Pj4+Pgo+ID4+Pj4gT24gVHVlLCBNYXkgMTgsIDIwMjEgYXQgNzo0MCBQTSBDaHJpc3RpYW4gS8O2
bmlnCj4gPj4+PiA8Y2tvZW5pZy5sZWljaHR6dW1lcmtlbkBnbWFpbC5jb20+IHdyb3RlOgo+ID4+
Pj4+Cj4gPj4+Pj4gQW0gMTguMDUuMjEgdW0gMTg6NDggc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+
ID4+Pj4+PiBPbiBUdWUsIE1heSAxOCwgMjAyMSBhdCAyOjQ5IFBNIENocmlzdGlhbiBLw7ZuaWcK
PiA+Pj4+Pj4gPGNrb2VuaWcubGVpY2h0enVtZXJrZW5AZ21haWwuY29tPiB3cm90ZToKPiA+Pj4+
Pj4KPiA+Pj4+Pj4+IEFuZCBhcyBsb25nIGFzIHdlIGFyZSBhbGwgaW5zaWRlIGFtZGdwdSB3ZSBh
bHNvIGRvbid0IGhhdmUgYW55IG92ZXJzeW5jLAo+ID4+Pj4+Pj4gdGhlIGlzc3VlIG9ubHkgaGFw
cGVucyB3aGVuIHdlIHNoYXJlIGRtYS1idWZzIHdpdGggaTkxNSAocmFkZW9uIGFuZAo+ID4+Pj4+
Pj4gQUZBSUsgbm91dmVhdSBkb2VzIHRoZSByaWdodCB0aGluZyBhcyB3ZWxsKS4KPiA+Pj4+Pj4g
WWVhaCBiZWNhdXNlIHRoZW4geW91IGNhbid0IHVzZSB0aGUgYW1kZ3B1IGRtYV9yZXN2IG1vZGVs
IGFueW1vcmUgYW5kCj4gPj4+Pj4+IGhhdmUgdG8gdXNlIHRoZSBvbmUgYXRvbWljIGhlbHBlcnMg
dXNlLiBXaGljaCBpcyBhbHNvIHRoZSBvbmUgdGhhdAo+ID4+Pj4+PiBlLmcuIEphc29uIGlzIHRo
cmVhdGhlbmluZyB0byBiYWtlIGluIGFzIHVhcGkgd2l0aCBoaXMgZG1hX2J1ZiBpb2N0bCwKPiA+
Pj4+Pj4gc28gYXMgc29vbiBhcyB0aGF0IGxhbmRzIGFuZCBzb21lb25lIHN0YXJ0cyB1c2luZyBp
dCwgc29tZXRoaW5nIGhhcyB0bwo+ID4+Pj4+PiBhZGFwdCBfYW55dGltZV8geW91IGhhdmUgYSBk
bWEtYnVmIGhhbmdpbmcgYXJvdW5kLiBOb3QganVzdCB3aGVuIGl0J3MKPiA+Pj4+Pj4gc2hhcmVk
IHdpdGggYW5vdGhlciBkZXZpY2UuCj4gPj4+Pj4KPiA+Pj4+PiBZZWFoLCBhbmQgdGhhdCBpcyBl
eGFjdGx5IHRoZSByZWFzb24gd2h5IEkgd2lsbCBOQUsgdGhpcyB1QVBJIGNoYW5nZS4KPiA+Pj4+
Pgo+ID4+Pj4+IFRoaXMgZG9lc24ndCB3b3JrcyBmb3IgYW1kZ3B1IGF0IGFsbCBmb3IgdGhlIHJl
YXNvbnMgb3V0bGluZWQgYWJvdmUuCj4gPj4+Pgo+ID4+Pj4gVWggdGhhdCdzIHJlYWxseSBub3Qg
aG93IHVhcGkgd29ya3MuICJteSBkcml2ZXIgaXMgcmlnaHQsIGV2ZXJ5b25lCj4gPj4+PiBlbHNl
IGlzIHdyb25nIiBpcyBub3QgaG93IGNyb3NzIGRyaXZlciBjb250cmFjdHMgYXJlIGRlZmluZWQu
IElmIHRoYXQKPiA+Pj4+IG1lYW5zIGEgcGVyZiBpbXBhY3QgdW50aWwgeW91J3ZlIGZpeGVkIHlv
dXIgcnVsZXMsIHRoYXQncyBvbiB5b3UuCj4gPj4+Pgo+ID4+Pj4gQWxzbyB5b3UncmUgYSBmZXcg
eWVhcnMgdG9vIGxhdGUgd2l0aCBuYWNraW5nIHRoaXMsIGl0J3MgYWxyZWFkeSB1YXBpCj4gPj4+
PiBpbiB0aGUgZm9ybSBvZiB0aGUgZG1hLWJ1ZiBwb2xsKCkgc3VwcG9ydC4KPiA+Pj4KPiA+Pj4g
Xl4gIE15IGZhbmN5IG5ldyBpb2N0bCBkb2Vzbid0IGV4cG9zZSBhbnl0aGluZyB0aGF0IGlzbid0
IGFscmVhZHkKPiA+Pj4gdGhlcmUuICBJdCBqdXN0IGxldHMgeW91IHRha2UgYSBzbmFwLXNob3Qg
b2YgYSB3YWl0IGluc3RlYWQgb2YgZG9pbmcKPiA+Pj4gYW4gYWN0aXZlIHdhaXQgd2hpY2ggbWln
aHQgZW5kIHVwIHdpdGggbW9yZSBmZW5jZXMgYWRkZWQgZGVwZW5kaW5nIG9uCj4gPj4+IGludGVy
cnVwdHMgYW5kIHJldHJpZXMuICBUaGUgZG1hLWJ1ZiBwb2xsIHdhaXRzIG9uIGFsbCBmZW5jZXMg
Zm9yCj4gPj4+IFBPTExPVVQgYW5kIG9ubHkgdGhlIGV4Y2x1c2l2ZSBmZW5jZSBmb3IgUE9MTElO
LiAgSXQncyBhbHJlYWR5IHVBUEkuCj4gPj4KPiA+PiBOb3RlIHRoYXQgdGhlIGRtYS1idWYgcG9s
bCBzdXBwb3J0IGNvdWxkIGJlIHVzZWZ1bCB0byBXYXlsYW5kIGNvbXBvc2l0b3JzIGZvciB0aGUg
c2FtZSBwdXJwb3NlIGFzIEphc29uJ3MgbmV3IGlvY3RsIChvbmx5IHVzaW5nIGNsaWVudCBidWZm
ZXJzIHdoaWNoIGhhdmUgZmluaXNoZWQgZHJhd2luZyBmb3IgYW4gb3V0cHV0IGZyYW1lLCB0byBh
dm9pZCBtaXNzaW5nIGEgcmVmcmVzaCBjeWNsZSBkdWUgdG8gY2xpZW50IGRyYXdpbmcpLCAqaWYq
IGl0IGRpZG4ndCB3b3JrIGRpZmZlcmVudGx5IHdpdGggYW1kZ3B1Lgo+ID4+Cj4gPj4gQW0gSSB1
bmRlcnN0YW5kaW5nIGNvcnJlY3RseSB0aGF0IEphc29uJ3MgbmV3IGlvY3RsIHdvdWxkIGFsc28g
d29yayBkaWZmZXJlbnRseSB3aXRoIGFtZGdwdSBhcyB0aGluZ3Mgc3RhbmQgY3VycmVudGx5PyBJ
ZiBzbywgdGhhdCB3b3VsZCBiZSBhIHJlYWwgYnVtbWVyIGFuZCBtaWdodCBoaW5kZXIgYWRvcHRp
b24gb2YgdGhlIGlvY3RsIGJ5IFdheWxhbmQgY29tcG9zaXRvcnMuCj4gPgo+ID4gTXkgbmV3IGlv
Y3RsIGhhcyBpZGVudGljYWwgc2VtYW50aWNzIHRvIHBvbGwoKS4gIEl0IGp1c3QgbGV0cyB5b3Ug
dGFrZQo+ID4gYSBzbmFwc2hvdCBpbiB0aW1lIHRvIHdhaXQgb24gbGF0ZXIgaW5zdGVhZCBvZiB3
YWl0aW5nIG9uIHdoYXRldmVyCj4gPiBoYXBwZW5zIHRvIGJlIHNldCByaWdodCBub3cuICBJTU8s
IGhhdmluZyBpZGVudGljYWwgc2VtYW50aWNzIHRvCj4gPiBwb2xsKCkgaXNuJ3Qgc29tZXRoaW5n
IHdlIHdhbnQgdG8gY2hhbmdlLgo+Cj4gQWdyZWVkLgo+Cj4gSSdkIGFyZ3VlIHRoZW4gdGhhdCBt
YWtpbmcgYW1kZ3B1IHBvbGwgc2VtYW50aWNzIG1hdGNoIHRob3NlIG9mIG90aGVyIGRyaXZlcnMg
aXMgYSBwcmUtcmVxdWlzaXRlIGZvciB0aGUgbmV3IGlvY3RsLCBvdGhlcndpc2UgaXQgc2VlbXMg
dW5saWtlbHkgdGhhdCB0aGUgaW9jdGwgd2lsbCBiZSB3aWRlbHkgYWRvcHRlZC4KClRoaXMgc2Vl
bXMgYmFja3dhcmRzLCBiZWNhdXNlIHRoYXQgbWVhbnMgdXNlZnVsIGltcHJvdmVtZW50cyBpbiBh
bGwKb3RoZXIgZHJpdmVycyBhcmUgc3RhbGxlZCB1bnRpbCBhbWRncHUgaXMgZml4ZWQuCgpJIHRo
aW5rIHdlIG5lZWQgYWdyZWVtZW50IG9uIHdoYXQgdGhlIHJ1bGVzIGFyZSwgcmVhc29uYWJsZSBw
bGFuIHRvCmdldCB0aGVyZSwgYW5kIHRoZW4gdGhhdCBzaG91bGQgYmUgZW5vdWdoIHRvIHVuYmxv
Y2sgd29yayBpbiB0aGUgd2lkZXIKY29tbXVuaXR5LiBIb2xkaW5nIHRoZSBjb21tdW5pdHkgYXQg
bGFyZ2UgaG9zdGFnZSBiZWNhdXNlIG9uZSBkcml2ZXIKaXMgZGlmZmVyZW50IGlzIHJlYWxseSBu
b3QgZ3JlYXQuCgpJJ3ZlIGp1c3QgZmluaXNoZWQgdGhlIHN1YnN5c3RlbSByZXZpZXcgb2YgZXZl
cnl0aGluZywgYW5kIHRodXMgZmFyCm9ubHkgZm91bmQgc29tZSBtaW5vciBidWdzIHdpdGhvdXQg
cHJhY3RpY2FsIHNpZ25pZmljYW5jZS4gSSdsbCBmaXgKdGhvc2UgYW5kIHRoZW4gc2VuZCBvdXQg
YSBzZXJpZXMuCi1EYW5pZWwKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIElu
dGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0Ckxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
