Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E173D26D1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Jul 2021 17:36:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 79ABD6328E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Jul 2021 15:36:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3550B6329F; Thu, 22 Jul 2021 15:36:41 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0F53360E2A;
	Thu, 22 Jul 2021 15:36:38 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 25A7060B26
 for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Jul 2021 15:36:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 219CD60E2A; Thu, 22 Jul 2021 15:36:37 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
 [209.85.128.49])
 by lists.linaro.org (Postfix) with ESMTPS id 10C6C60B26
 for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Jul 2021 15:36:35 +0000 (UTC)
Received: by mail-wm1-f49.google.com with SMTP id
 l11-20020a7bc34b0000b029021f84fcaf75so1828798wmj.1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Jul 2021 08:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=b0DoJx2BsbVVJrk2vhA6kDfquGRohjbc2PM7uCJo7AQ=;
 b=qHf9OnWhVMewnBbcFMkLefFnXcpymEjYudSG0ys60GLD0Qqj29UwPxDjYRTi1bFgWE
 Of7wRgf0ZZhtR5c+swf6vMqjVKSGhM1KD6PcZnqQ+Usgp/QkLWXaC1mJaJyEYuygJt78
 Kj5/oQpBY/Z4gFgwiMrzmUEo2Ntd1oCRYdzfRiBKhy+R4QQybhfvqL/O2JZ7UudKEHh+
 uZZIStXwovcNMremIcEh5hhEMEp+pXLcscxehmhWXdj8lGVZrSAev0auU2IFnIOX3ajk
 JpaGrq3FPqzl0boPVilTPm8n9Oqllf3KvCPBOuLV/MNi32Q4iyfhpOk1NY7hMvYC4Jwr
 PLXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=b0DoJx2BsbVVJrk2vhA6kDfquGRohjbc2PM7uCJo7AQ=;
 b=PMeXkgW/O3ei8UjA/Tg7BsHIBxH7LBnU2NMIL4dGonyX9Zonql8RAQXf0o0Miz+mj1
 L/TBl/cy81a3scFS8FAgiqhYCNGKTYNQyQZcG/BlwUUr9BZEYYyOaOqq3sGDyDZX+9kD
 aBlu/o3vwEmoRt3QUL6fJ8h1+fDYIo7FIiDfD73Hm+LRUQgyVpcGoiekPSmk9YgV6imq
 iciPdMYf+KvGm0e9Jc5uuhrEgv8IjFxndimdvlqC3iRrn6aP44YpfZ3pxtoYFnP4zjpH
 Y/YApiFFMb7POQCg7TJhcvjcsID/SiYk2YWmF3slS5GWXvkjJ8dl0BoI2tJQrw1xNfTb
 rOLQ==
X-Gm-Message-State: AOAM533ia3E6hLlx+FbAEXyP2su7DT4Cty1mi5t5cOsEZA6xDVMx8IcX
 vFDdacb4XcVL2OWwIm4lvSOOvkzO51a8SW0+5LM=
X-Google-Smtp-Source: ABdhPJxCkdIVm7iTrG4HCBPglTT8Jd2ruOUzfhfaiqWM3gbxHRbhBAOwJMUcdcc5JmreBWyQuVeEjCRkg5PGbQro08k=
X-Received: by 2002:a1c:7c05:: with SMTP id x5mr9870542wmc.123.1626968193910; 
 Thu, 22 Jul 2021 08:36:33 -0700 (PDT)
MIME-Version: 1.0
References: <20210720150716.1213775-1-robdclark@gmail.com>
 <60ffb6f3-e932-d9af-3b90-81adf0c15250@gmail.com>
 <CAF6AEGtOW3EjZWo36ij8U1om=gAqvg8CSkJJq2GkyHFGWUH4kQ@mail.gmail.com>
 <CAKMK7uF1=Y6_9znGoWG8GrteXBBRmyW8C3bFE+eJQqOj0A1buA@mail.gmail.com>
 <CAF6AEGsOVPdMkXwU9C+nDfQpPThveJ2A0jbXi43RRkkJKtnz3w@mail.gmail.com>
 <CAKMK7uHMXFqic=9APJrSf6totB8nGZTDe4x8+sv-drmV4Q+4Bg@mail.gmail.com>
 <CAF6AEGsKoucxt4a2pcdQM9+L0+YU-6TcAt8eF=3ur169646Jhw@mail.gmail.com>
 <YPhvein5e8do2AR+@phenom.ffwll.local>
 <113b5858-9020-d1c1-292b-96b7f9cc717a@gmail.com>
In-Reply-To: <113b5858-9020-d1c1-292b-96b7f9cc717a@gmail.com>
From: Rob Clark <robdclark@gmail.com>
Date: Thu, 22 Jul 2021 08:40:42 -0700
Message-ID: <CAF6AEGuWFPway2_UThe9p=OwL1rLaADONHmt7++qC3PUX+y_SQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] drm/msm: Add fence->wait() op
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
Cc: Rob Clark <robdclark@chromium.org>, David Airlie <airlied@linux.ie>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Sean Paul <sean@poorly.run>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <freedreno@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gVGh1LCBKdWwgMjIsIDIwMjEgYXQgMTo0MiBBTSBDaHJpc3RpYW4gS8O2bmlnCjxja29lbmln
LmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBBbSAyMS4wNy4yMSB1bSAyMTow
MyBzY2hyaWViIERhbmllbCBWZXR0ZXI6Cj4gPiBPbiBXZWQsIEp1bCAyMSwgMjAyMSBhdCAwOToz
NDo0M0FNIC0wNzAwLCBSb2IgQ2xhcmsgd3JvdGU6Cj4gPj4gT24gV2VkLCBKdWwgMjEsIDIwMjEg
YXQgMTI6NTkgQU0gRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPiB3cm90ZToKPiA+Pj4g
T24gV2VkLCBKdWwgMjEsIDIwMjEgYXQgMTI6MzIgQU0gUm9iIENsYXJrIDxyb2JkY2xhcmtAZ21h
aWwuY29tPiB3cm90ZToKPiA+Pj4+IE9uIFR1ZSwgSnVsIDIwLCAyMDIxIGF0IDE6NTUgUE0gRGFu
aWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPiB3cm90ZToKPiA+Pj4+PiBPbiBUdWUsIEp1bCAy
MCwgMjAyMSBhdCA4OjI2IFBNIFJvYiBDbGFyayA8cm9iZGNsYXJrQGdtYWlsLmNvbT4gd3JvdGU6
Cj4gPj4+Pj4+IE9uIFR1ZSwgSnVsIDIwLCAyMDIxIGF0IDExOjAzIEFNIENocmlzdGlhbiBLw7Zu
aWcKPiA+Pj4+Pj4gPGNrb2VuaWcubGVpY2h0enVtZXJrZW5AZ21haWwuY29tPiB3cm90ZToKPiA+
Pj4+Pj4+IEhpIFJvYiwKPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBBbSAyMC4wNy4yMSB1bSAxNzowNyBz
Y2hyaWViIFJvYiBDbGFyazoKPiA+Pj4+Pj4+PiBGcm9tOiBSb2IgQ2xhcmsgPHJvYmRjbGFya0Bj
aHJvbWl1bS5vcmc+Cj4gPj4+Pj4+Pj4KPiA+Pj4+Pj4+PiBTb21laG93IHdlIGhhZCBuZWl0aGVy
IC0+d2FpdCgpIG5vciBkbWFfZmVuY2Vfc2lnbmFsKCkgY2FsbHMsIGFuZCBubwo+ID4+Pj4+Pj4+
IG9uZSBub3RpY2VkLiAgT29wcy4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBJJ20gbm90IHN1cmUgaWYg
dGhhdCBpcyBhIGdvb2QgaWRlYS4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBUaGUgZG1hX2ZlbmNlLT53
YWl0KCkgY2FsbGJhY2sgaXMgcHJldHR5IG11Y2ggZGVwcmVjYXRlZCBhbmQgc2hvdWxkIG5vdAo+
ID4+Pj4+Pj4gYmUgdXNlZCBhbnkgbW9yZS4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBXaGF0IGV4YWN0
bHkgZG8geW91IG5lZWQgdGhhdCBmb3I/Cj4gPj4+Pj4+IFdlbGwsIHRoZSBhbHRlcm5hdGl2ZSBp
cyB0byB0cmFjayB0aGUgc2V0IG9mIGZlbmNlcyB3aGljaCBoYXZlCj4gPj4+Pj4+IHNpZ25hbGxp
bmcgZW5hYmxlZCwgYW5kIHRoZW4gZmlndXJlIG91dCB3aGljaCBvbmVzIHRvIHNpZ25hbCwgd2hp
Y2gKPiA+Pj4+Pj4gc2VlbXMgbGlrZSBhIGxvdCBtb3JlIHdvcmssIHZzIGp1c3QgcmUtcHVycG9z
aW5nIHRoZSB3YWl0Cj4gPj4+Pj4+IGltcGxlbWVudGF0aW9uIHdlIGFscmVhZHkgaGF2ZSBmb3Ig
bm9uLWRtYV9mZW5jZSBjYXNlcyA7LSkKPiA+Pj4+Pj4KPiA+Pj4+Pj4gV2h5IGlzIHRoZSAtPndh
aXQoKSBjYWxsYmFjayAocHJldHR5IG11Y2gpIGRlcHJlY2F0ZWQ/Cj4gPj4+Pj4gQmVjYXVzZSBp
ZiB5b3UgbmVlZCBpdCB0aGF0IG1lYW5zIGZvciB5b3VyIGRyaXZlciBkbWFfZmVuY2VfYWRkX2Ni
IGlzCj4gPj4+Pj4gYnJva2VuLCB3aGljaCBtZWFucyBhIF9sb3RfIG9mIHRoaW5ncyBkb24ndCB3
b3JrLiBMaWtlIGRtYV9idWYgcG9sbAo+ID4+Pj4+IChjb21wb3NpdG9ycyBoYXZlIHBhdGNoZXMg
dG8gc3RhcnQgdXNpbmcgdGhhdCksIGFuZCBJIHRoaW5rCj4gPj4+Pj4gZHJtL3NjaGVkdWxlciBh
bHNvIGJlY29tZXMgcmF0aGVyIHVuaGFwcHkuCj4gPj4+PiBJJ20gc3RhcnRpbmcgdG8gcGFnZSBi
YWNrIGluIGhvdyB0aGlzIHdvcmtzLi4gZmVuY2UgY2IncyBhcmVuJ3QgYnJva2VuCj4gPj4+PiAo
d2hpY2ggaXMgYWxzbyB3aHkgZG1hX2ZlbmNlX3dhaXQoKSB3YXMgbm90IGNvbXBsZXRlbHkgYnJv
a2VuKSwKPiA+Pj4+IGJlY2F1c2UgaW4gcmV0aXJlX3N1Ym1pdHMoKSB3ZSBjYWxsCj4gPj4+PiBk
bWFfZmVuY2VfaXNfc2lnbmFsZWQoc3VibWl0LT5od19mZW5jZSkuCj4gPj4+Pgo+ID4+Pj4gQnV0
IHRoZSByZWFzb24gdGhhdCB0aGUgY3VzdG9tIHdhaXQgZnVuY3Rpb24gY2xlYW5zIHVwIGEgdGlu
eSBiaXQgb2YKPiA+Pj4+IGphbmsgaXMgdGhhdCB0aGUgd2FpdF9xdWV1ZV9oZWFkX3QgZ2V0cyBz
aWduYWxlZCBlYXJsaWVyLCBiZWZvcmUgd2UKPiA+Pj4+IHN0YXJ0IGl0ZXJhdGluZyB0aGUgc3Vi
bWl0cyBhbmQgZG9pbmcgYWxsIHRoYXQgcmV0aXJlX3N1Ym1pdCgpIHN0dWZmCj4gPj4+PiAodW5w
aW4vdW5yZWYgYm8ncywgZXRjKS4gIEkgc3VwcG9zZSBJIGNvdWxkIGp1c3Qgc3BsaXQgdGhpbmdz
IHVwIHRvCj4gPj4+PiBjYWxsIGRtYV9mZW5jZV9zaWduYWwoKSBlYXJsaWVyLCBhbmQgKnRoZW4q
IGRvIHRoZSByZXRpcmVfc3VibWl0cygpCj4gPj4+PiBzdHVmZi4KPiA+Pj4gWWVhaCByZWR1Y2lu
ZyB0aGUgbGF0ZW5jeSB0aGVyZSBzb3VuZHMgbGlrZSBhIGdvb2QgaWRlYS4KPiA+Pj4gLURhbmll
bAo+ID4+Pgo+ID4+IEhtbSwgbm8sIHR1cm5zIG91dCB0aGF0IGlzbid0IHRoZSBwcm9ibGVtLi4g
b3IsIHdlbGwsIGl0IGlzIHByb2JhYmx5IGEKPiA+PiBnb29kIGlkZWEgdG8gY2FsbCBkcm1fZmVu
Y2Vfc2lnbmFsKCkgZWFybGllci4gIEJ1dCBpdCBzZWVtcyBsaWtlCj4gPj4gd2FraW5nIHVwIGZy
b20gd2FpdF9ldmVudF8qIGlzIGZhc3RlciB0aGFuIHdha2VfdXBfc3RhdGUod2FpdC0+dGFzaywK
PiA+PiBUQVNLX05PUk1BTCkuICBJIHN1cHBvc2UgdGhlIHdha2VfdXBfc3RhdGUoKSBhcHByb2Fj
aCBzdGlsbCBuZWVkcyBmb3IKPiA+PiB0aGUgc2NoZWR1bGVyIHRvIGdldCBhcm91bmQgdG8gc2No
ZWR1bGUgdGhlIHJ1bm5hYmxlIHRhc2suCj4KPiBBcyBmYXIgYXMgSSBrbm93IHdha2VfdXBfc3Rh
dGUoKSB0cmllcyB0byBydW4gdGhlIHRocmVhZCBvbiB0aGUgQ1BVIGl0Cj4gd2FzIHNjaGVkdWxl
ZCBsYXN0LCB3aGlsZSB3YWl0X2V2ZW50XyogbWFrZXMgdGhlIHRocmVhZCBydW4gb24gdGhlIENQ
VQo+IHdobyBpc3N1ZXMgdGhlIHdha2UgYnkgZGVmYXVsdC4KPgo+IEFuZCB5ZXMgSSd2ZSBhbHNv
IG5vdGljZWQgdGhpcyBhbHJlYWR5IGFuZCBpdCB3YXMgb25lIG9mIHRoZSByZWFzb24gd2h5Cj4g
SSBzdWdnZXN0ZWQgdG8gdXNlIGEgd2FpdF9xdWV1ZSBpbnN0ZWFkIG9mIHRoZSBoYW5kIHdpcmVk
IGRtYV9mZW5jZV93YWl0Cj4gaW1wbGVtZW50YXRpb24uCj4KPiA+Pgo+ID4+IFNvIGZvciBub3cs
IEknbSBnb2luZyBiYWNrIHRvIG15IG93biB3YWl0IGZ1bmN0aW9uIChwbHVzIGVhcmxpZXIKPiA+
PiBkcm1fZmVuY2Vfc2lnbmFsKCkpCj4gPj4KPiA+PiBCZWZvcmUgcmVtb3ZpbmcgZG1hX2ZlbmNl
X29wcHM6OndhaXQoKSwgSSBndWVzcyB3ZSB3YW50IHRvIHJlLXRoaW5rCj4gPj4gZG1hX2ZlbmNl
X2RlZmF1bHRfd2FpdCgpLi4gYnV0IEkgdGhpbmsgdGhhdCB3b3VsZCByZXF1aXJlIGEKPiA+PiBk
bWFfZmVuY2VfY29udGV4dCBiYXNlIGNsYXNzIChyYXRoZXIgdGhhbiBqdXN0IGEgcmF3IGludGVn
ZXIpLgo+ID4gVWggdGhhdCdzIG5vdCBncmVhdCAuLi4gY2FuJ3Qgd2UgZml4IHRoaXMgaW5zdGVh
ZCBvZiBwYXBlcmluZyBvdmVyIGl0IGluCj4gPiBkcml2ZXJzPyBBc2lkZSBmcm9tIG1heWJlIGRp
ZmZlcmVudCB3YWtldXAgZmxhZ3MgaXQgYWxsIGlzIHN1cHBvc2VkIHRvCj4gPiB3b3JrIGV4YWN0
bHkgdGhlIHNhbWUgdW5kZXJuZWF0aCwgYW5kIHdoZXRoZXIgdXNpbmcgYSB3YWl0IHF1ZXVlIG9y
IG5vdAo+ID4gcmVhbGx5IHNob3VsZG4ndCBtYXR0ZXIuCj4KPiBXZWxsIGl0IHdvdWxkIGhhdmUg
YmVlbiBuaWNlciBpZiB3ZSB1c2VkIHRoZSBleGlzdGluZyBpbmZyYXN0cnVjdHVyZQo+IGluc3Rl
YWQgb2YgcmUtaW52ZW50aW5nIHN0dWZmIGZvciBkbWFfZmVuY2UsIGJ1dCB0aGF0IGNoYW5jZSBp
cyBsb25nIGdvbmUuCj4KPiBBbmQgeW91IGRvbid0IG5lZWQgYSBkbWFfZmVuY2VfY29udGV4dCBi
YXNlIGNsYXNzLCBidXQgcmF0aGVyIGp1c3QgYQo+IGZsYWcgaW4gdGhlIGRtYV9mZW5jZV9vcHMg
aWYgeW91IHdhbnQgdG8gY2hhbmdlIHRoZSBiZWhhdmlvci4KCkhtbSwgSSB3YXMgdGhpbmtpbmcg
ZG1hX2ZlbmNlX2NvbnRleHQgdG8gaGF2ZSBhIHBsYWNlIGZvciB0aGUKd2FpdF9xdWV1ZV9oZWFk
LCBidXQgSSBndWVzcyB0aGF0IGNvdWxkIGFsc28gYmUgcGVyLWRtYV9mZW5jZQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5h
cm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
