Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC4D38A528
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 12:13:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8018361236
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 10:13:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A8E8261149; Thu, 20 May 2021 10:13:03 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1EE7B61151;
	Thu, 20 May 2021 10:12:59 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5DE5860656
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 10:00:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4FD9B60A8D; Thu, 20 May 2021 10:00:55 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
 [209.85.208.44])
 by lists.linaro.org (Postfix) with ESMTPS id 3007560A8D
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 10:00:53 +0000 (UTC)
Received: by mail-ed1-f44.google.com with SMTP id i13so18678319edb.9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 03:00:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=3M+oi/O5PNaK1CoEoVeTrQPUtn5HClRQ4IqV6H7ywB0=;
 b=ECutEpYoSLJwIfLB40YxiH9/53GrDenulWP48XFUNPAqBD+38dYmu2Z5vvcxBUYgQb
 XjjgS07z6tEKkXNtmvugPXQXaHnzXKfpbzIljS1eQONR8c3aFBDsTtXrXp2fP49pcZ+g
 QC4bFjMB2LGQEBgKRaesKl0TnsWJq6UYMMMgghYSY6eThgw64sP0N4IVvgv91hIxoMEA
 l58d2sxPYZlDYuEOn46uT7ku1oYuRDoIl3+E4UCyyyKJKNs2PjIHNzsCD5mrXPYdFdci
 JIxUq8wibAQd5eNkhkux7qnftJGXk9728g6rPSU5FMf1AGiXS5cH3H20YX5ABKg2yGMl
 kuDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=3M+oi/O5PNaK1CoEoVeTrQPUtn5HClRQ4IqV6H7ywB0=;
 b=TnHR6Sj6qM303gcrhm4J6SdakRto7OitYrnzmEbwoqUZEn3mjeLpDxEE1AZMe+9YCw
 cYNJS2dUVdYCQp87mq+qZ+8zkV+DNOpzyxbd2F0HOUDzpBA7vVPkWuDDH9pkYthIc4FL
 5v+PG6cmVllEzxdxAHgbv4OhcvE/lgV9GrvdJbH/58uIrryWCt9cJNKBBfKovItgZt1z
 vhRQkFga/0DV1cp4NDGIIiefJIM5RHAz0JKxQH4CO94FBbwnT9sN5j1O7aWwjkJPYXE6
 Q1lfe7uY6ljS3fQ8Svk/hJE3JnFfB6dworSCXAtgXrD2zkfHJHus4mrRpn3Wms6mf8xb
 OyAg==
X-Gm-Message-State: AOAM532JmbWXkwo2TEbxaSIPG5SMNnFPmZaDn65pA1okDJGMNI/zZm+T
 H7UtfMgI96M5wY/W3OYA2if6KxJODIQ=
X-Google-Smtp-Source: ABdhPJyqzuQkZv+kPIgzMRzUKSnXiPG1wP7UO8Izi4/lkmucYVMWVA+waqVJ2TbfWhVCoCkjRVp5Bw==
X-Received: by 2002:a05:6402:2793:: with SMTP id
 b19mr3993069ede.191.1621504852223; 
 Thu, 20 May 2021 03:00:52 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:4635:589e:67a4:e02a?
 ([2a02:908:1252:fb60:4635:589e:67a4:e02a])
 by smtp.gmail.com with ESMTPSA id di7sm1226481edb.34.2021.05.20.03.00.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 20 May 2021 03:00:51 -0700 (PDT)
To: =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>,
 Daniel Vetter <daniel@ffwll.ch>
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
 <7cbba7b7-d7e5-9c76-c747-4e39542268a2@daenzer.net>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <4aa3ee97-f860-999f-9874-2b89b29c9634@gmail.com>
Date: Thu, 20 May 2021 12:00:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <7cbba7b7-d7e5-9c76-c747-4e39542268a2@daenzer.net>
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
 <linaro-mm-sig@lists.linaro.org>, Jason Ekstrand <jason@jlekstrand.net>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjAuMDUuMjEgdW0gMTA6MTMgc2NocmllYiBNaWNoZWwgRMOkbnplcjoKPiBPbiAyMDIxLTA1
LTIwIDk6NTUgYS5tLiwgRGFuaWVsIFZldHRlciB3cm90ZToKPj4gT24gV2VkLCBNYXkgMTksIDIw
MjEgYXQgNTo0OCBQTSBNaWNoZWwgRMOkbnplciA8bWljaGVsQGRhZW56ZXIubmV0PiB3cm90ZToK
Pj4+IE9uIDIwMjEtMDUtMTkgNToyMSBwLm0uLCBKYXNvbiBFa3N0cmFuZCB3cm90ZToKPj4+PiBP
biBXZWQsIE1heSAxOSwgMjAyMSBhdCA1OjUyIEFNIE1pY2hlbCBEw6RuemVyIDxtaWNoZWxAZGFl
bnplci5uZXQ+IHdyb3RlOgo+Pj4+PiBPbiAyMDIxLTA1LTE5IDEyOjA2IGEubS4sIEphc29uIEVr
c3RyYW5kIHdyb3RlOgo+Pj4+Pj4gT24gVHVlLCBNYXkgMTgsIDIwMjEgYXQgNDoxNyBQTSBEYW5p
ZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+IHdyb3RlOgo+Pj4+Pj4+IE9uIFR1ZSwgTWF5IDE4
LCAyMDIxIGF0IDc6NDAgUE0gQ2hyaXN0aWFuIEvDtm5pZwo+Pj4+Pj4+IDxja29lbmlnLmxlaWNo
dHp1bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6Cj4+Pj4+Pj4+IEFtIDE4LjA1LjIxIHVtIDE4OjQ4
IHNjaHJpZWIgRGFuaWVsIFZldHRlcjoKPj4+Pj4+Pj4+IE9uIFR1ZSwgTWF5IDE4LCAyMDIxIGF0
IDI6NDkgUE0gQ2hyaXN0aWFuIEvDtm5pZwo+Pj4+Pj4+Pj4gPGNrb2VuaWcubGVpY2h0enVtZXJr
ZW5AZ21haWwuY29tPiB3cm90ZToKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gQW5kIGFzIGxvbmcgYXMg
d2UgYXJlIGFsbCBpbnNpZGUgYW1kZ3B1IHdlIGFsc28gZG9uJ3QgaGF2ZSBhbnkgb3ZlcnN5bmMs
Cj4+Pj4+Pj4+Pj4gdGhlIGlzc3VlIG9ubHkgaGFwcGVucyB3aGVuIHdlIHNoYXJlIGRtYS1idWZz
IHdpdGggaTkxNSAocmFkZW9uIGFuZAo+Pj4+Pj4+Pj4+IEFGQUlLIG5vdXZlYXUgZG9lcyB0aGUg
cmlnaHQgdGhpbmcgYXMgd2VsbCkuCj4+Pj4+Pj4+PiBZZWFoIGJlY2F1c2UgdGhlbiB5b3UgY2Fu
J3QgdXNlIHRoZSBhbWRncHUgZG1hX3Jlc3YgbW9kZWwgYW55bW9yZSBhbmQKPj4+Pj4+Pj4+IGhh
dmUgdG8gdXNlIHRoZSBvbmUgYXRvbWljIGhlbHBlcnMgdXNlLiBXaGljaCBpcyBhbHNvIHRoZSBv
bmUgdGhhdAo+Pj4+Pj4+Pj4gZS5nLiBKYXNvbiBpcyB0aHJlYXRoZW5pbmcgdG8gYmFrZSBpbiBh
cyB1YXBpIHdpdGggaGlzIGRtYV9idWYgaW9jdGwsCj4+Pj4+Pj4+PiBzbyBhcyBzb29uIGFzIHRo
YXQgbGFuZHMgYW5kIHNvbWVvbmUgc3RhcnRzIHVzaW5nIGl0LCBzb21ldGhpbmcgaGFzIHRvCj4+
Pj4+Pj4+PiBhZGFwdCBfYW55dGltZV8geW91IGhhdmUgYSBkbWEtYnVmIGhhbmdpbmcgYXJvdW5k
LiBOb3QganVzdCB3aGVuIGl0J3MKPj4+Pj4+Pj4+IHNoYXJlZCB3aXRoIGFub3RoZXIgZGV2aWNl
Lgo+Pj4+Pj4+PiBZZWFoLCBhbmQgdGhhdCBpcyBleGFjdGx5IHRoZSByZWFzb24gd2h5IEkgd2ls
bCBOQUsgdGhpcyB1QVBJIGNoYW5nZS4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gVGhpcyBkb2Vzbid0IHdv
cmtzIGZvciBhbWRncHUgYXQgYWxsIGZvciB0aGUgcmVhc29ucyBvdXRsaW5lZCBhYm92ZS4KPj4+
Pj4+PiBVaCB0aGF0J3MgcmVhbGx5IG5vdCBob3cgdWFwaSB3b3Jrcy4gIm15IGRyaXZlciBpcyBy
aWdodCwgZXZlcnlvbmUKPj4+Pj4+PiBlbHNlIGlzIHdyb25nIiBpcyBub3QgaG93IGNyb3NzIGRy
aXZlciBjb250cmFjdHMgYXJlIGRlZmluZWQuIElmIHRoYXQKPj4+Pj4+PiBtZWFucyBhIHBlcmYg
aW1wYWN0IHVudGlsIHlvdSd2ZSBmaXhlZCB5b3VyIHJ1bGVzLCB0aGF0J3Mgb24geW91Lgo+Pj4+
Pj4+Cj4+Pj4+Pj4gQWxzbyB5b3UncmUgYSBmZXcgeWVhcnMgdG9vIGxhdGUgd2l0aCBuYWNraW5n
IHRoaXMsIGl0J3MgYWxyZWFkeSB1YXBpCj4+Pj4+Pj4gaW4gdGhlIGZvcm0gb2YgdGhlIGRtYS1i
dWYgcG9sbCgpIHN1cHBvcnQuCj4+Pj4+PiBeXiAgTXkgZmFuY3kgbmV3IGlvY3RsIGRvZXNuJ3Qg
ZXhwb3NlIGFueXRoaW5nIHRoYXQgaXNuJ3QgYWxyZWFkeQo+Pj4+Pj4gdGhlcmUuICBJdCBqdXN0
IGxldHMgeW91IHRha2UgYSBzbmFwLXNob3Qgb2YgYSB3YWl0IGluc3RlYWQgb2YgZG9pbmcKPj4+
Pj4+IGFuIGFjdGl2ZSB3YWl0IHdoaWNoIG1pZ2h0IGVuZCB1cCB3aXRoIG1vcmUgZmVuY2VzIGFk
ZGVkIGRlcGVuZGluZyBvbgo+Pj4+Pj4gaW50ZXJydXB0cyBhbmQgcmV0cmllcy4gIFRoZSBkbWEt
YnVmIHBvbGwgd2FpdHMgb24gYWxsIGZlbmNlcyBmb3IKPj4+Pj4+IFBPTExPVVQgYW5kIG9ubHkg
dGhlIGV4Y2x1c2l2ZSBmZW5jZSBmb3IgUE9MTElOLiAgSXQncyBhbHJlYWR5IHVBUEkuCj4+Pj4+
IE5vdGUgdGhhdCB0aGUgZG1hLWJ1ZiBwb2xsIHN1cHBvcnQgY291bGQgYmUgdXNlZnVsIHRvIFdh
eWxhbmQgY29tcG9zaXRvcnMgZm9yIHRoZSBzYW1lIHB1cnBvc2UgYXMgSmFzb24ncyBuZXcgaW9j
dGwgKG9ubHkgdXNpbmcgY2xpZW50IGJ1ZmZlcnMgd2hpY2ggaGF2ZSBmaW5pc2hlZCBkcmF3aW5n
IGZvciBhbiBvdXRwdXQgZnJhbWUsIHRvIGF2b2lkIG1pc3NpbmcgYSByZWZyZXNoIGN5Y2xlIGR1
ZSB0byBjbGllbnQgZHJhd2luZyksICppZiogaXQgZGlkbid0IHdvcmsgZGlmZmVyZW50bHkgd2l0
aCBhbWRncHUuCj4+Pj4+Cj4+Pj4+IEFtIEkgdW5kZXJzdGFuZGluZyBjb3JyZWN0bHkgdGhhdCBK
YXNvbidzIG5ldyBpb2N0bCB3b3VsZCBhbHNvIHdvcmsgZGlmZmVyZW50bHkgd2l0aCBhbWRncHUg
YXMgdGhpbmdzIHN0YW5kIGN1cnJlbnRseT8gSWYgc28sIHRoYXQgd291bGQgYmUgYSByZWFsIGJ1
bW1lciBhbmQgbWlnaHQgaGluZGVyIGFkb3B0aW9uIG9mIHRoZSBpb2N0bCBieSBXYXlsYW5kIGNv
bXBvc2l0b3JzLgo+Pj4+IE15IG5ldyBpb2N0bCBoYXMgaWRlbnRpY2FsIHNlbWFudGljcyB0byBw
b2xsKCkuICBJdCBqdXN0IGxldHMgeW91IHRha2UKPj4+PiBhIHNuYXBzaG90IGluIHRpbWUgdG8g
d2FpdCBvbiBsYXRlciBpbnN0ZWFkIG9mIHdhaXRpbmcgb24gd2hhdGV2ZXIKPj4+PiBoYXBwZW5z
IHRvIGJlIHNldCByaWdodCBub3cuICBJTU8sIGhhdmluZyBpZGVudGljYWwgc2VtYW50aWNzIHRv
Cj4+Pj4gcG9sbCgpIGlzbid0IHNvbWV0aGluZyB3ZSB3YW50IHRvIGNoYW5nZS4KPj4+IEFncmVl
ZC4KPj4+Cj4+PiBJJ2QgYXJndWUgdGhlbiB0aGF0IG1ha2luZyBhbWRncHUgcG9sbCBzZW1hbnRp
Y3MgbWF0Y2ggdGhvc2Ugb2Ygb3RoZXIgZHJpdmVycyBpcyBhIHByZS1yZXF1aXNpdGUgZm9yIHRo
ZSBuZXcgaW9jdGwsIG90aGVyd2lzZSBpdCBzZWVtcyB1bmxpa2VseSB0aGF0IHRoZSBpb2N0bCB3
aWxsIGJlIHdpZGVseSBhZG9wdGVkLgo+PiBUaGlzIHNlZW1zIGJhY2t3YXJkcywgYmVjYXVzZSB0
aGF0IG1lYW5zIHVzZWZ1bCBpbXByb3ZlbWVudHMgaW4gYWxsCj4+IG90aGVyIGRyaXZlcnMgYXJl
IHN0YWxsZWQgdW50aWwgYW1kZ3B1IGlzIGZpeGVkLgo+Pgo+PiBJIHRoaW5rIHdlIG5lZWQgYWdy
ZWVtZW50IG9uIHdoYXQgdGhlIHJ1bGVzIGFyZSwgcmVhc29uYWJsZSBwbGFuIHRvCj4+IGdldCB0
aGVyZSwgYW5kIHRoZW4gdGhhdCBzaG91bGQgYmUgZW5vdWdoIHRvIHVuYmxvY2sgd29yayBpbiB0
aGUgd2lkZXIKPj4gY29tbXVuaXR5LiBIb2xkaW5nIHRoZSBjb21tdW5pdHkgYXQgbGFyZ2UgaG9z
dGFnZSBiZWNhdXNlIG9uZSBkcml2ZXIKPj4gaXMgZGlmZmVyZW50IGlzIHJlYWxseSBub3QgZ3Jl
YXQuCj4gSSB0aGluayB3ZSdyZSBpbiB2aW9sZW50IGFncmVlbWVudC4gOikgVGhlIHBvaW50IEkg
d2FzIHRyeWluZyB0byBtYWtlIGlzIHRoYXQgYW1kZ3B1IHJlYWxseSBuZWVkcyB0byBiZSBmaXhl
ZCB0byBiZSBjb25zaXN0ZW50IHdpdGggb3RoZXIgZHJpdmVycyBBU0FQLgoKV2VsbCBmcm9tIG15
IHBvaW50IG9mIHZpZXcgSSByYXRoZXIgdGhpbmsgdGhhdCB0aGUgcnVsZXMgb2YgRE1BLWJ1ZiAK
aW1wbGljaXQgc3luYyBzaG91bGQgYmUgZml4ZWQsIGNhdXNlIHRob3NlIGFyZSBiYXNlZCBvbiBh
biBhbmNpZW50IERSTSAKYXBwcm9hY2guCgpBbmQgSSdtIHNlcmlvdXNseSBub3QgYWNjZXB0aW5n
IGFueSBjaGFuZ2VzIHRvIGFtZGdwdSBpbnZvbHZpbmcgcGVyIEJPIApmbGFncyBmb3IgQ1MuCgpS
ZWdhcmRzLApDaHJpc3RpYW4uCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bmFyby1tbS1zaWcK
