Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5028438A8C6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 12:53:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 254CA61299
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 10:53:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1147C61161; Thu, 20 May 2021 10:53:06 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6AC596115B;
	Thu, 20 May 2021 10:53:03 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 404EE605C8
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 10:50:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 296216115B; Thu, 20 May 2021 10:50:42 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com
 [209.85.218.52])
 by lists.linaro.org (Postfix) with ESMTPS id 19CC861149
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 10:50:40 +0000 (UTC)
Received: by mail-ej1-f52.google.com with SMTP id l4so24514723ejc.10
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 03:50:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=XFbYliOMvEOd6Jdc+WdGEi50t9JwV69wEL+rjEJw1lU=;
 b=pv2fuF/JjWey1AGPwtFyjAId/YS4C95+TABL872sENlgJDxDRR8TtU8l5OQOGGKC12
 Z682EfoVATVUC3pNH+q5JNd3N6ZQtMA5Pq+UhAUX0BKy7e+vK/znjam294AqXsxb8Y/8
 So0SXNPysor4oVRSzeKCnuut6xJFRfHQA3pkJ1TdImzyutXqstaY8qk3wXz5nnPCXDUP
 DlbfFpkXQgCXtKsEYUqZboWa9s/zH3vIgW4RL3NRQE2KzOrCD5Ydpis+J5RmXAD5lRa7
 7rbLeSr1X9ELa6xeZWJ0AWH3aMn05DcGy9S0emPqaSndeL39hfyyjWG2VL7Qvc65+lDH
 X7LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=XFbYliOMvEOd6Jdc+WdGEi50t9JwV69wEL+rjEJw1lU=;
 b=A09nfb0GxGx5Da4cz/8odGCroJxRocUbv4Uw2CXlvsVurrY/xjJ27Bx/TUt3swamXg
 SmUpD4Z8Vk01Xxh7pIU9ucxAgAnluu1blzFZce3rn0JkrW9fYIjxehnuXXFjfK3eUGG5
 oH7SlshGufR875l3fIbOsSVrNC/RMdxt3KlmdklBpHIDShSMTq4ZMBmLusskj8w1roP8
 1UXf42xDnQ/rUTURJD1LEF7deBBcd3sx8oo9UiYqKMCO+76DUqFD+c1SqOtj/m7bniEy
 M7TJNECIlD3l67jlUkhNJJugmF332ZR82z10SMiuAOY8hPJ3/5H/dpvfNsc/i99Op/1W
 mzkA==
X-Gm-Message-State: AOAM530Kx7jn8J54iwP6pIrqcDEyzQrbyFM5eTqO//uje+aiPB30VkoI
 aIMbbjXnY0l05e80psw8H9c=
X-Google-Smtp-Source: ABdhPJy/SqfEqs49QjaJpeGi8v7+MFrugju3RkGwVg6UdjqEtMviHtlZ6ae8ojpzYiJeNfj9OdMdlA==
X-Received: by 2002:a17:907:76e8:: with SMTP id
 kg8mr3836195ejc.130.1621507839133; 
 Thu, 20 May 2021 03:50:39 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:4635:589e:67a4:e02a?
 ([2a02:908:1252:fb60:4635:589e:67a4:e02a])
 by smtp.gmail.com with ESMTPSA id b16sm1368456edu.53.2021.05.20.03.50.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 20 May 2021 03:50:38 -0700 (PDT)
To: Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?Q?Michel_D=c3=a4nzer?=
 <michel@daenzer.net>
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
 <CAKMK7uFMQGth19OjWmeNGTeVFoAqxK2tYXYrvme+NuCSNLxLUQ@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <a8d0acd9-6a0e-58bb-1f2d-e85f00ad9677@gmail.com>
Date: Thu, 20 May 2021 12:50:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CAKMK7uFMQGth19OjWmeNGTeVFoAqxK2tYXYrvme+NuCSNLxLUQ@mail.gmail.com>
Content-Language: en-US
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjAuMDUuMjEgdW0gMDk6NTUgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIFdlZCwgTWF5
IDE5LCAyMDIxIGF0IDU6NDggUE0gTWljaGVsIETDpG56ZXIgPG1pY2hlbEBkYWVuemVyLm5ldD4g
d3JvdGU6Cj4+IE9uIDIwMjEtMDUtMTkgNToyMSBwLm0uLCBKYXNvbiBFa3N0cmFuZCB3cm90ZToK
Pj4+IE9uIFdlZCwgTWF5IDE5LCAyMDIxIGF0IDU6NTIgQU0gTWljaGVsIETDpG56ZXIgPG1pY2hl
bEBkYWVuemVyLm5ldD4gd3JvdGU6Cj4+Pj4gT24gMjAyMS0wNS0xOSAxMjowNiBhLm0uLCBKYXNv
biBFa3N0cmFuZCB3cm90ZToKPj4+Pj4gT24gVHVlLCBNYXkgMTgsIDIwMjEgYXQgNDoxNyBQTSBE
YW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+IHdyb3RlOgo+Pj4+Pj4gT24gVHVlLCBNYXkg
MTgsIDIwMjEgYXQgNzo0MCBQTSBDaHJpc3RpYW4gS8O2bmlnCj4+Pj4+PiA8Y2tvZW5pZy5sZWlj
aHR6dW1lcmtlbkBnbWFpbC5jb20+IHdyb3RlOgo+Pj4+Pj4+IEFtIDE4LjA1LjIxIHVtIDE4OjQ4
IHNjaHJpZWIgRGFuaWVsIFZldHRlcjoKPj4+Pj4+Pj4gT24gVHVlLCBNYXkgMTgsIDIwMjEgYXQg
Mjo0OSBQTSBDaHJpc3RpYW4gS8O2bmlnCj4+Pj4+Pj4+IDxja29lbmlnLmxlaWNodHp1bWVya2Vu
QGdtYWlsLmNvbT4gd3JvdGU6Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBBbmQgYXMgbG9uZyBhcyB3ZSBh
cmUgYWxsIGluc2lkZSBhbWRncHUgd2UgYWxzbyBkb24ndCBoYXZlIGFueSBvdmVyc3luYywKPj4+
Pj4+Pj4+IHRoZSBpc3N1ZSBvbmx5IGhhcHBlbnMgd2hlbiB3ZSBzaGFyZSBkbWEtYnVmcyB3aXRo
IGk5MTUgKHJhZGVvbiBhbmQKPj4+Pj4+Pj4+IEFGQUlLIG5vdXZlYXUgZG9lcyB0aGUgcmlnaHQg
dGhpbmcgYXMgd2VsbCkuCj4+Pj4+Pj4+IFllYWggYmVjYXVzZSB0aGVuIHlvdSBjYW4ndCB1c2Ug
dGhlIGFtZGdwdSBkbWFfcmVzdiBtb2RlbCBhbnltb3JlIGFuZAo+Pj4+Pj4+PiBoYXZlIHRvIHVz
ZSB0aGUgb25lIGF0b21pYyBoZWxwZXJzIHVzZS4gV2hpY2ggaXMgYWxzbyB0aGUgb25lIHRoYXQK
Pj4+Pj4+Pj4gZS5nLiBKYXNvbiBpcyB0aHJlYXRoZW5pbmcgdG8gYmFrZSBpbiBhcyB1YXBpIHdp
dGggaGlzIGRtYV9idWYgaW9jdGwsCj4+Pj4+Pj4+IHNvIGFzIHNvb24gYXMgdGhhdCBsYW5kcyBh
bmQgc29tZW9uZSBzdGFydHMgdXNpbmcgaXQsIHNvbWV0aGluZyBoYXMgdG8KPj4+Pj4+Pj4gYWRh
cHQgX2FueXRpbWVfIHlvdSBoYXZlIGEgZG1hLWJ1ZiBoYW5naW5nIGFyb3VuZC4gTm90IGp1c3Qg
d2hlbiBpdCdzCj4+Pj4+Pj4+IHNoYXJlZCB3aXRoIGFub3RoZXIgZGV2aWNlLgo+Pj4+Pj4+IFll
YWgsIGFuZCB0aGF0IGlzIGV4YWN0bHkgdGhlIHJlYXNvbiB3aHkgSSB3aWxsIE5BSyB0aGlzIHVB
UEkgY2hhbmdlLgo+Pj4+Pj4+Cj4+Pj4+Pj4gVGhpcyBkb2Vzbid0IHdvcmtzIGZvciBhbWRncHUg
YXQgYWxsIGZvciB0aGUgcmVhc29ucyBvdXRsaW5lZCBhYm92ZS4KPj4+Pj4+IFVoIHRoYXQncyBy
ZWFsbHkgbm90IGhvdyB1YXBpIHdvcmtzLiAibXkgZHJpdmVyIGlzIHJpZ2h0LCBldmVyeW9uZQo+
Pj4+Pj4gZWxzZSBpcyB3cm9uZyIgaXMgbm90IGhvdyBjcm9zcyBkcml2ZXIgY29udHJhY3RzIGFy
ZSBkZWZpbmVkLiBJZiB0aGF0Cj4+Pj4+PiBtZWFucyBhIHBlcmYgaW1wYWN0IHVudGlsIHlvdSd2
ZSBmaXhlZCB5b3VyIHJ1bGVzLCB0aGF0J3Mgb24geW91Lgo+Pj4+Pj4KPj4+Pj4+IEFsc28geW91
J3JlIGEgZmV3IHllYXJzIHRvbyBsYXRlIHdpdGggbmFja2luZyB0aGlzLCBpdCdzIGFscmVhZHkg
dWFwaQo+Pj4+Pj4gaW4gdGhlIGZvcm0gb2YgdGhlIGRtYS1idWYgcG9sbCgpIHN1cHBvcnQuCj4+
Pj4+IF5eICBNeSBmYW5jeSBuZXcgaW9jdGwgZG9lc24ndCBleHBvc2UgYW55dGhpbmcgdGhhdCBp
c24ndCBhbHJlYWR5Cj4+Pj4+IHRoZXJlLiAgSXQganVzdCBsZXRzIHlvdSB0YWtlIGEgc25hcC1z
aG90IG9mIGEgd2FpdCBpbnN0ZWFkIG9mIGRvaW5nCj4+Pj4+IGFuIGFjdGl2ZSB3YWl0IHdoaWNo
IG1pZ2h0IGVuZCB1cCB3aXRoIG1vcmUgZmVuY2VzIGFkZGVkIGRlcGVuZGluZyBvbgo+Pj4+PiBp
bnRlcnJ1cHRzIGFuZCByZXRyaWVzLiAgVGhlIGRtYS1idWYgcG9sbCB3YWl0cyBvbiBhbGwgZmVu
Y2VzIGZvcgo+Pj4+PiBQT0xMT1VUIGFuZCBvbmx5IHRoZSBleGNsdXNpdmUgZmVuY2UgZm9yIFBP
TExJTi4gIEl0J3MgYWxyZWFkeSB1QVBJLgo+Pj4+IE5vdGUgdGhhdCB0aGUgZG1hLWJ1ZiBwb2xs
IHN1cHBvcnQgY291bGQgYmUgdXNlZnVsIHRvIFdheWxhbmQgY29tcG9zaXRvcnMgZm9yIHRoZSBz
YW1lIHB1cnBvc2UgYXMgSmFzb24ncyBuZXcgaW9jdGwgKG9ubHkgdXNpbmcgY2xpZW50IGJ1ZmZl
cnMgd2hpY2ggaGF2ZSBmaW5pc2hlZCBkcmF3aW5nIGZvciBhbiBvdXRwdXQgZnJhbWUsIHRvIGF2
b2lkIG1pc3NpbmcgYSByZWZyZXNoIGN5Y2xlIGR1ZSB0byBjbGllbnQgZHJhd2luZyksICppZiog
aXQgZGlkbid0IHdvcmsgZGlmZmVyZW50bHkgd2l0aCBhbWRncHUuCj4+Pj4KPj4+PiBBbSBJIHVu
ZGVyc3RhbmRpbmcgY29ycmVjdGx5IHRoYXQgSmFzb24ncyBuZXcgaW9jdGwgd291bGQgYWxzbyB3
b3JrIGRpZmZlcmVudGx5IHdpdGggYW1kZ3B1IGFzIHRoaW5ncyBzdGFuZCBjdXJyZW50bHk/IElm
IHNvLCB0aGF0IHdvdWxkIGJlIGEgcmVhbCBidW1tZXIgYW5kIG1pZ2h0IGhpbmRlciBhZG9wdGlv
biBvZiB0aGUgaW9jdGwgYnkgV2F5bGFuZCBjb21wb3NpdG9ycy4KPj4+IE15IG5ldyBpb2N0bCBo
YXMgaWRlbnRpY2FsIHNlbWFudGljcyB0byBwb2xsKCkuICBJdCBqdXN0IGxldHMgeW91IHRha2UK
Pj4+IGEgc25hcHNob3QgaW4gdGltZSB0byB3YWl0IG9uIGxhdGVyIGluc3RlYWQgb2Ygd2FpdGlu
ZyBvbiB3aGF0ZXZlcgo+Pj4gaGFwcGVucyB0byBiZSBzZXQgcmlnaHQgbm93LiAgSU1PLCBoYXZp
bmcgaWRlbnRpY2FsIHNlbWFudGljcyB0bwo+Pj4gcG9sbCgpIGlzbid0IHNvbWV0aGluZyB3ZSB3
YW50IHRvIGNoYW5nZS4KPj4gQWdyZWVkLgo+Pgo+PiBJJ2QgYXJndWUgdGhlbiB0aGF0IG1ha2lu
ZyBhbWRncHUgcG9sbCBzZW1hbnRpY3MgbWF0Y2ggdGhvc2Ugb2Ygb3RoZXIgZHJpdmVycyBpcyBh
IHByZS1yZXF1aXNpdGUgZm9yIHRoZSBuZXcgaW9jdGwsIG90aGVyd2lzZSBpdCBzZWVtcyB1bmxp
a2VseSB0aGF0IHRoZSBpb2N0bCB3aWxsIGJlIHdpZGVseSBhZG9wdGVkLgo+IFRoaXMgc2VlbXMg
YmFja3dhcmRzLCBiZWNhdXNlIHRoYXQgbWVhbnMgdXNlZnVsIGltcHJvdmVtZW50cyBpbiBhbGwK
PiBvdGhlciBkcml2ZXJzIGFyZSBzdGFsbGVkIHVudGlsIGFtZGdwdSBpcyBmaXhlZC4KCldlbGwg
dGhlcmUgaXMgbm90aGluZyB0byBmaXggaW4gYW1kZ3B1LCB3aGF0IHdlIG5lZWQgdG8gaXMgdG8g
Y29tZSB1cCAKd2l0aCBhbiBETUEtYnVmIGltcGxpY2l0IHN5bmNpbmcgbW9kZWwgd2hpY2ggd29y
a3MgZm9yIGV2ZXJ5b25lLgoKSSd2ZSBwb2ludGVkIHRoaXMgcHJvYmxlbSBvdXQgYXQgRk9TREVN
IHJvdWdobHkgNiB5ZWFycyBhZ28sIGJlZm9yZSAKRE1BLWJ1ZiB3YXMgZXZlbiBtZXJnZWQgdXBz
dHJlYW0gYW5kIHdheSBiZWZvcmUgYW1kZ3B1IGV2ZW4gZXhpc3RlZC4gQW5kIAp0aGUgcmVzcG9u
c2Ugd2FzIHllYWgsIG1heWJlIHdlIG5lZWQgdG8gbG9vayBhdCB0aGlzIGFzIHdlbGwuCgpPdmVy
IHRoZSB5ZWFycyBJJ3ZlIG1lbnRpb25lZCBub3cgYXQgbGVhc3QgNSB0aW1lcyB0aGF0IHRoaXMg
aXNuJ3QgZ29pbmcgCnRvIHdvcmsgaW4gc29tZSBzaXR1YXRpb25zIGFuZCBjYW1lIHVwIHdpdGgg
ZGlmZmVyZW50IGFwcHJvYWNoZXMgaG93IHRvIApmaXggaXQuCgpBbmQgeW91IHN0aWxsIGhhdmUg
dGhlIG5lcnZlcyB0byB0ZWxsIG1lIHRoYXQgdGhpcyBpc24ndCBhIHByb2JsZW0gYW5kIAp3ZSBz
aG91bGQgZml4IGFtZGdwdSBpbnN0ZWFkPyBTb3JyeSwgYnV0IEknbSByZWFsbHkgcnVubmluZyBv
dXQgb2YgaWRlYXMgCmhvdyB0byBleHBsYWluIHdoeSB0aGlzIGlzbid0IHdvcmtpbmcgZm9yIGV2
ZXJ5Ym9keS4KClRoYXQgYW1kZ3B1IHdhbnRzIHRvIGJlIHNwZWNpYWwgaXMgdHJ1ZSwgYnV0IGl0
IGlzIGEgZnVuZGFtZW50YWwgcHJvYmxlbSAKdGhhdCB3ZSBoYXZlIGRlc2lnbmVkIHRoZSBpbXBs
aWNpdCBzeW5jIGluIERNQS1idWYgb25seSBhcm91bmQgdGhlIG5lZWRzIApvZiBEUk0gZHJpdmVy
cyBhdCB0aGF0IHRpbWUgaW5zdGVhZCBvZiBnb2luZyBhIHN0ZXAgYmFjayBhbmQgc2F5aW5nIGhl
eSAKd2hhdCB3b3VsZCBiZSBhbiBhcHByb2FjaCB3aGljaCB3b3JrcyBmb3IgZXZlcnlvbmUuCgpZ
b3UganVzdCBuZWVkIHRvIGFwcGx5IG15IGV4YW1wbGUgZnJvbSBGT1NERU0gd2l0aCByaW5nIGJ1
ZmZlcnMgaW4gYSAKc2luZ2xlIEJPIHRvIHRoZSBETUEtYnVmIGltcGxpY2l0IHN5bmMgbW9kZWwg
YW5kIGltbWVkaWF0ZWx5IHNlZSBob3cgaXQgCmZhbGxzIGFwYXJ0LgoKPiBJIHRoaW5rIHdlIG5l
ZWQgYWdyZWVtZW50IG9uIHdoYXQgdGhlIHJ1bGVzIGFyZSwgcmVhc29uYWJsZSBwbGFuIHRvCj4g
Z2V0IHRoZXJlLCBhbmQgdGhlbiB0aGF0IHNob3VsZCBiZSBlbm91Z2ggdG8gdW5ibG9jayB3b3Jr
IGluIHRoZSB3aWRlcgo+IGNvbW11bml0eS4gSG9sZGluZyB0aGUgY29tbXVuaXR5IGF0IGxhcmdl
IGhvc3RhZ2UgYmVjYXVzZSBvbmUgZHJpdmVyCj4gaXMgZGlmZmVyZW50IGlzIHJlYWxseSBub3Qg
Z3JlYXQuCgpXZWxsIGZvcmNpbmcgYSBkcml2ZXJzIGludG8gYSBzeW5jaHJvbml6YXRpb24gbW9k
ZWwgbm90IGlkZWFsIGZvciB0aGVpciAKaGFyZHdhcmUgaXNuJ3QgZ3JlYXQgZWl0aGVyLgoKVGhl
IHBhdGNoZXMgSSBwcm92aWRlZCBhdCBsZWFzdCBjbGVhbiB1cCB0aGUgbmFtaW5nIGNvbnZlbnRp
b24gYW5kIApwcm92aWRlIGNsZWFuIGludGVyZmFjZXMgZm9yIGl0ZXJhdGluZyBvdmVyIHRoZSBz
aGFyZWQgZmVuY2UgY29udGFpbmVyLiAKT24gdG9wIG9mIHRoYXQgdXNlIGNhc2UgZHJpdmVuIEFQ
SXMgY2FuIGJlIGltcGxlbWVudGVkLgoKQW5kIHllcyBJJ20gcGVyZmVjdGx5IGF3YXJlIHRoYXQg
dGhpcyBtZWFucyB0aGF0IHdlIG5lZWQgdG8gdG91Y2ggYWxsIApkcml2ZXJzIGFuZCBtZW1vcnkg
bWFuYWdlbWVudCBoYW5kbGVycywgYnV0IEknbSBwcmV0dHkgc3VyZSB0aGF0IAp1bnRhbmdsaW5n
IGltcGxpY2l0IHN5bmNocm9uaXphdGlvbiBmcm9tIHJlc291cmNlIG1hbmFnZW1lbnQgaXMgd29y
dGggCnRoZSBlZmZvcnQgbm8gbWF0dGVyIHdoYXQgY2hhbmdlcyB0byB0aGUgc3luYyBtb2RlbCB3
ZSBhcmUgZ29pbmcgdG8gZG8uCgpSZWdhcmRzLApDaHJpc3RpYW4uCgoKPiBJJ3ZlIGp1c3QgZmlu
aXNoZWQgdGhlIHN1YnN5c3RlbSByZXZpZXcgb2YgZXZlcnl0aGluZywgYW5kIHRodXMgZmFyCj4g
b25seSBmb3VuZCBzb21lIG1pbm9yIGJ1Z3Mgd2l0aG91dCBwcmFjdGljYWwgc2lnbmlmaWNhbmNl
LiBJJ2xsIGZpeAo+IHRob3NlIGFuZCB0aGVuIHNlbmQgb3V0IGEgc2VyaWVzLgo+IC1EYW5pZWwK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczov
L2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
