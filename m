Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 167BC3D8CD4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Jul 2021 13:36:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D4D856350F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Jul 2021 11:36:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 98F6163523; Wed, 28 Jul 2021 11:36:38 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AD74A63503;
	Wed, 28 Jul 2021 11:36:34 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id AF690634E6
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Jul 2021 11:36:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AA6D363501; Wed, 28 Jul 2021 11:36:31 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by lists.linaro.org (Postfix) with ESMTPS id 95A1D634FF
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Jul 2021 11:36:29 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id b9so2078535wrx.12
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Jul 2021 04:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=ctxTTD1eYmR1KRXoZD+iD1SFLdswDK3qL2mBNRwqgG8=;
 b=E0kWDXP8TwH7fnA4mxIdiCoU1hLAGIlJMVS+k17SaGveAyHftFfgbwPHOm/YiLeUr4
 jb6Bipbwe5pC3EKXwqn03YESjhqRx6aZpObuU9qufR80JS44PD0VHj6UyueHYcubsjbA
 o+WRN7cd+fg77gPxVnOIjSU1hvKycRaZ+k2QskO+Lowgq2w588/39uDXHrO1gKmVNiMx
 VNh0fPm2Qs82PniLOq5ZY6ucPzyAJ7nHJSXiAAW6mYAZbYJmyQGA4hxxAo8XP62SLd9s
 Sgngnlrqq+XvwResuspUbmIhFstjNh26TmGQsGWr9I7GQMlYNDWybrdev4mDHGU0sSuM
 MGOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=ctxTTD1eYmR1KRXoZD+iD1SFLdswDK3qL2mBNRwqgG8=;
 b=ZwEzjg3mHeshKRgsrr1QjVPJ9z2h+f7lqYE5fhb4GyhDoKeJpeS32gYJXY4a0ojSZX
 4Xyrljn4Rvwkg8h/yT/gSptQSMGxAYGWDBf0tEx5H7FJl6ZHyJ2lXZOI4kLasvfAfbV0
 8OdwQ151HVFav4qdtQ5MsNMUsX2xdIBJN5UCpfm4DI+kIUDCrHuE9BmlgOEXlQrXYbXw
 cjaIL5dAW4A1NueGBfZs/J6bxqxuwf5kXcKz2oZslHkohKUVA1tZW32OBnHC1QdKIqh9
 DaUQup9nw34JnW2POT5YPu64bjUMPWNySSpHTa9IUViqq4FpVoiBvl62SJ3jkbbjBKRb
 1huA==
X-Gm-Message-State: AOAM531sfkqvyxNP3PHSfW3NS/daIWCAvo27vqBnJ0/naupJW/ZWK10p
 zWVPf2dZTrXp1LmVkt/03kk=
X-Google-Smtp-Source: ABdhPJzN9Ejho84SxZ+EisMXOSRndfBgocIDirO7z0vMJboAiMYiBMMrvLO9l+kIT1zNAyv6NKqgbg==
X-Received: by 2002:a5d:674f:: with SMTP id l15mr20680621wrw.354.1627472188541; 
 Wed, 28 Jul 2021 04:36:28 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:6a5d:b580:2891:cbac?
 ([2a02:908:1252:fb60:6a5d:b580:2891:cbac])
 by smtp.gmail.com with ESMTPSA id o19sm6086953wmr.18.2021.07.28.04.36.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 28 Jul 2021 04:36:28 -0700 (PDT)
To: Rob Clark <robdclark@chromium.org>, =?UTF-8?Q?Michel_D=c3=a4nzer?=
 <michel@daenzer.net>
References: <20210726233854.2453899-1-robdclark@gmail.com>
 <28ca4167-4a65-0ccc-36be-5fb017f6f49d@daenzer.net>
 <CAF6AEGuhQ2=DSDaGGVwBz5O+FoZEjpgoVJOcFecpd--a9yDY1w@mail.gmail.com>
 <99984703-c3ca-6aae-5888-5997d7046112@daenzer.net>
 <CAJs_Fx4O4w5djx3-q5zja51-ko_nQ0X2nEk3qoZB_axpBVSrKA@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <f6d73ec5-85f9-1b18-f2d2-a5f3b7333efa@gmail.com>
Date: Wed, 28 Jul 2021 13:36:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAJs_Fx4O4w5djx3-q5zja51-ko_nQ0X2nEk3qoZB_axpBVSrKA@mail.gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC 0/4] dma-fence: Deadline awareness
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
Cc: Matthew Brost <matthew.brost@intel.com>, Jack Zhang <Jack.Zhang1@amd.com>,
 Gustavo Padovan <gustavo@padovan.org>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Rob Clark <robdclark@gmail.com>, Luben Tuikov <luben.tuikov@amd.com>,
 Roy Sun <Roy.Sun@amd.com>, Alex Deucher <alexander.deucher@amd.com>,
 Tian Tao <tiantao6@hisilicon.com>, Lee Jones <lee.jones@linaro.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjcuMDcuMjEgdW0gMTc6Mzcgc2NocmllYiBSb2IgQ2xhcms6Cj4gT24gVHVlLCBKdWwgMjcs
IDIwMjEgYXQgODoxOSBBTSBNaWNoZWwgRMOkbnplciA8bWljaGVsQGRhZW56ZXIubmV0PiB3cm90
ZToKPj4gT24gMjAyMS0wNy0yNyA1OjEyIHAubS4sIFJvYiBDbGFyayB3cm90ZToKPj4+IE9uIFR1
ZSwgSnVsIDI3LCAyMDIxIGF0IDc6NTAgQU0gTWljaGVsIETDpG56ZXIgPG1pY2hlbEBkYWVuemVy
Lm5ldD4gd3JvdGU6Cj4+Pj4gT24gMjAyMS0wNy0yNyAxOjM4IGEubS4sIFJvYiBDbGFyayB3cm90
ZToKPj4+Pj4gRnJvbTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPgo+Pj4+Pgo+
Pj4+PiBCYXNlZCBvbiBkaXNjdXNzaW9uIGZyb20gYSBwcmV2aW91cyBzZXJpZXNbMV0gdG8gYWRk
IGEgImJvb3N0IiBtZWNoYW5pc20KPj4+Pj4gd2hlbiwgZm9yIGV4YW1wbGUsIHZibGFuayBkZWFk
bGluZXMgYXJlIG1pc3NlZC4gIEluc3RlYWQgb2YgYSBib29zdAo+Pj4+PiBjYWxsYmFjaywgdGhp
cyBhcHByb2FjaCBhZGRzIGEgd2F5IHRvIHNldCBhIGRlYWRsaW5lIG9uIHRoZSBmZW5jZSwgYnkK
Pj4+Pj4gd2hpY2ggdGhlIHdhaXRlciB3b3VsZCBsaWtlIHRvIHNlZSB0aGUgZmVuY2Ugc2lnbmFs
bGVkLgo+Pj4+Pgo+Pj4+PiBJJ3ZlIG5vdCB5ZXQgaGFkIGEgY2hhbmNlIHRvIHJlLXdvcmsgdGhl
IGRybS9tc20gcGFydCBvZiB0aGlzLCBidXQKPj4+Pj4gd2FudGVkIHRvIHNlbmQgdGhpcyBvdXQg
YXMgYW4gUkZDIGluIGNhc2UgSSBkb24ndCBoYXZlIGEgY2hhbmNlIHRvCj4+Pj4+IGZpbmlzaCB0
aGUgZHJtL21zbSBwYXJ0IHRoaXMgd2Vlay4KPj4+Pj4KPj4+Pj4gT3JpZ2luYWwgZGVzY3JpcHRp
b246Cj4+Pj4+Cj4+Pj4+IEluIHNvbWUgY2FzZXMsIGxpa2UgZG91YmxlLWJ1ZmZlcmVkIHJlbmRl
cmluZywgbWlzc2luZyB2YmxhbmtzIGNhbgo+Pj4+PiB0cmljayB0aGUgR1BVIGludG8gcnVubmlu
ZyBhdCBhIGxvd2VyIGZyZXF1ZW5jZSwgd2hlbiByZWFsbHkgd2UKPj4+Pj4gd2FudCB0byBiZSBy
dW5uaW5nIGF0IGEgaGlnaGVyIGZyZXF1ZW5jeSB0byBub3QgbWlzcyB0aGUgdmJsYW5rcwo+Pj4+
PiBpbiB0aGUgZmlyc3QgcGxhY2UuCj4+Pj4+Cj4+Pj4+IFRoaXMgaXMgcGFydGlhbGx5IGluc3Bp
cmVkIGJ5IGEgdHJpY2sgaTkxNSBkb2VzLCBidXQgaW1wbGVtZW50ZWQKPj4+Pj4gdmlhIGRtYS1m
ZW5jZSBmb3IgYSBjb3VwbGUgb2YgcmVhc29uczoKPj4+Pj4KPj4+Pj4gMSkgVG8gY29udGludWUg
dG8gYmUgYWJsZSB0byB1c2UgdGhlIGF0b21pYyBoZWxwZXJzCj4+Pj4+IDIpIFRvIHN1cHBvcnQg
Y2FzZXMgd2hlcmUgZGlzcGxheSBhbmQgZ3B1IGFyZSBkaWZmZXJlbnQgZHJpdmVycwo+Pj4+Pgo+
Pj4+PiBbMV0gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy85MDMzMS8K
Pj4+PiBVbmZvcnR1bmF0ZWx5LCBub25lIG9mIHRoZXNlIGFwcHJvYWNoZXMgd2lsbCBoYXZlIHRo
ZSBmdWxsIGludGVuZGVkIGVmZmVjdCBvbmNlIFdheWxhbmQgY29tcG9zaXRvcnMgc3RhcnQgd2Fp
dGluZyBmb3IgY2xpZW50IGJ1ZmZlcnMgdG8gYmVjb21lIGlkbGUgYmVmb3JlIHVzaW5nIHRoZW0g
Zm9yIGFuIG91dHB1dCBmcmFtZSAodG8gcHJldmVudCBvdXRwdXQgZnJhbWVzIGZyb20gZ2V0dGlu
ZyBkZWxheWVkIGJ5IGNsaWVudCB3b3JrKS4gU2VlIGh0dHBzOi8vZ2l0bGFiLmdub21lLm9yZy9H
Tk9NRS9tdXR0ZXIvLS9tZXJnZV9yZXF1ZXN0cy8xODgwIChzaGFtZWxlc3MgcGx1ZyA6KSBmb3Ig
YSBwcm9vZiBvZiBjb25jZXB0IG9mIHRoaXMgZm9yIG11dHRlci4gVGhlIGJvb3N0IHdpbGwgb25s
eSBhZmZlY3QgdGhlIGNvbXBvc2l0b3IncyBvd24gR1BVIHdvcmssIG5vdCB0aGUgY2xpZW50IHdv
cmsgKHdoaWNoIG1lYW5zIG5vIGVmZmVjdCBhdCBhbGwgZm9yIGZ1bGxzY3JlZW4gYXBwcyB3aGVy
ZSB0aGUgY29tcG9zaXRvciBjYW4gc2NhbiBvdXQgdGhlIGNsaWVudCBidWZmZXJzIGRpcmVjdGx5
KS4KPj4+Pgo+Pj4gSSBndWVzcyB5b3UgbWVhbiAibm8gZWZmZWN0IGF0IGFsbCAqZXhjZXB0KiBm
b3IgZnVsbHNjcmVlbi4uLiI/Cj4+IEkgbWVhbnQgd2hhdCBJIHdyb3RlOiBUaGUgY29tcG9zaXRv
ciB3aWxsIHdhaXQgZm9yIHRoZSBuZXh0IGJ1ZmZlciB0byBiZWNvbWUgaWRsZSwgc28gdGhlcmUn
cyBubyBib29zdCBmcm9tIHRoaXMgbWVjaGFuaXNtIGZvciB0aGUgY2xpZW50IGRyYXdpbmcgdG8g
dGhhdCBidWZmZXIuIEFuZCBzaW5jZSB0aGUgY29tcG9zaXRvciBkb2VzIG5vIGRyYXdpbmcgb2Yg
aXRzIG93biBpbiB0aGlzIGNhc2UsIHRoZXJlJ3Mgbm8gYm9vc3QgZnJvbSB0aGF0IGVpdGhlci4K
Pj4KPj4KPj4+IEknZCBwZXJoYXBzIHJlY29tbWVuZCB0aGF0IHdheWxhbmQgY29tcG9zaXRvcnMs
IGluIGNhc2VzIHdoZXJlIG9ubHkgYQo+Pj4gc2luZ2xlIGxheWVyIGlzIGNoYW5naW5nLCBub3Qg
dHJ5IHRvIGJlIGNsZXZlciBhbmQganVzdCBwdXNoIHRoZQo+Pj4gdXBkYXRlIGRvd24gdG8gdGhl
IGtlcm5lbC4KPj4gRXZlbiBqdXN0IGZvciB0aGUgZnVsbHNjcmVlbiBkaXJlY3Qgc2Nhbm91dCBj
YXNlLCB0aGF0IHdvdWxkIHJlcXVpcmUgc29tZSBraW5kIG9mIGF0b21pYyBLTVMgQVBJIGV4dGVu
c2lvbiB0byBhbGxvdyBxdWV1aW5nIG11bHRpcGxlIHBhZ2UgZmxpcHMgZm9yIHRoZSBzYW1lIENS
VEMuCj4+Cj4+IEZvciBvdGhlciBjYXNlcywgdGhpcyB3b3VsZCBhbHNvIHJlcXVpcmUgYSBtZWNo
YW5pc20gdG8gY2FuY2VsIGEgcGVuZGluZyBhdG9taWMgY29tbWl0LCBmb3Igd2hlbiBhbm90aGVy
IHN1cmZhY2UgdXBkYXRlIGNvbWVzIGluIGJlZm9yZSB0aGUgY29tcG9zaXRvcidzIGRlYWRsaW5l
LCB3aGljaCBhZmZlY3RzIHRoZSBwcmV2aW91c2x5IHNpbmdsZSB1cGRhdGluZyBzdXJmYWNlIGFz
IHdlbGwuCj4+Cj4gV2VsbCwgaW4gdGhlIGVuZCwgdGhlcmUgaXMgbW9yZSB0aGFuIG9uZSBjb21w
b3NpdG9yIG91dCB0aGVyZS4uIGFuZCBpZgo+IHNvbWUgd2F5bGFuZCBjb21wb3NpdG9ycyBhcmUg
Z29pbmcgdGhpcyByb3V0ZSwgdGhleSBjYW4gYWxzbyBpbXBsZW1lbnQKPiB0aGUgc2FtZSBtZWNo
YW5pc20gaW4gdXNlcnNwYWNlIHVzaW5nIHRoZSBzeXNmcyB0aGF0IGRldmZyZXEgZXhwb3J0cy4K
Pgo+IEJ1dCBpdCBzb3VuZHMgc2ltcGxlciB0byBtZSBmb3IgdGhlIGNvbXBvc2l0b3IgdG8gaGF2
ZSBhIHNvcnQgb2YgImdhbWUKPiBtb2RlIiBmb3IgZnVsbHNjcmVlbiBnYW1lcy4uIEknbSBsZXNz
IHdvcnJpZWQgYWJvdXQgVUkgaW50ZXJhY3RpdmUKPiB3b3JrbG9hZHMsIGJvb3N0aW5nIHRoZSBH
UFUgZnJlcSB1cG9uIHN1ZGRlbiBhY3Rpdml0eSBhZnRlciBhIHBlcmlvZAo+IG9mIGluYWN0aXZp
dHkgc2VlbXMgdG8gd29yayByZWFzb25hYmx5IHdlbGwgdGhlcmUuCgpBdCBsZWFzdCBBTUQgaGFy
ZHdhcmUgaXMgYWxyZWFkeSBjYXBhYmxlIG9mIGZsaXBwaW5nIGZyYW1lcyBvbiBHUFUgCmV2ZW50
cyBsaWtlIGZpbmlzaGluZyByZW5kZXJpbmcgKG9yIHVwbG9hZGluZyBldGMpLgoKQnkgd2FpdGlu
ZyBpbiB1c2Vyc3BhY2Ugb24gdGhlIENQVSBiZWZvcmUgc2VuZCB0aGUgZnJhbWUgdG8gdGhlIGhh
cmR3YXJlIAp5b3UgYXJlIGNvbXBsZXRlbHkga2lsbGluZyBvZiBzdWNoIGZlYXR1cmVzLgoKRm9y
IGNvbXBvc2luZyB1c2UgY2FzZXMgdGhhdCBtYWtlcyBzZW5zZSwgYnV0IGNlcnRhaW5seSBub3Qg
Zm9yIGZ1bGwgCnNjcmVlbiBhcHBsaWNhdGlvbnMgYXMgZmFyIGFzIEkgY2FuIHNlZS4KClJlZ2Fy
ZHMsCkNocmlzdGlhbi4KCj4KPiBCUiwKPiAtUgo+Cj4+IC0tCj4+IEVhcnRobGluZyBNaWNoZWwg
RMOkbnplciAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICBodHRwczovL3JlZGhhdC5jb20K
Pj4gTGlicmUgc29mdHdhcmUgZW50aHVzaWFzdCAgICAgICAgICAgICB8ICAgICAgICAgICAgIE1l
c2EgYW5kIFggZGV2ZWxvcGVyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
YXJvLW1tLXNpZwo=
