Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A40F1DB0F1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2020 13:04:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 466CE65F8F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2020 11:04:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 395F165F90; Wed, 20 May 2020 11:04:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A693565F8A;
	Wed, 20 May 2020 11:03:34 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 225D665F85
 for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2020 11:03:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0893065F8A; Wed, 20 May 2020 11:03:27 +0000 (UTC)
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by lists.linaro.org (Postfix) with ESMTPS id 2A18565F85
 for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2020 11:03:25 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id g12so1490996wrw.1
 for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2020 04:03:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=ct4iwtkqSx7W80DKvDt8WvEkiq9KjVIacJ0yr7BAVII=;
 b=VaFTktI5S3xt9T7aowro1Goy0ghLzRuMIcTL25XuNmgIlCRyuBv33pM2/sZc0TzNds
 BVMH7bF6JkE5MDN/wFMgZW8/cyQCmfz7oRa/pVfrwiNFcbbTBS51ptx1LqH3qMfuYw4g
 306f2jeq3T0nm1ojqV2D+f41s6k/uAjIxAqv/JUVz57cwyQrN/giAAE6idqXfxcGVJpy
 kRyFZhwqbF3xGod7Z73uO1PXmiC6pYZHhEyKXDUMCFN/++dQpZH751t7pRXGLZ/rAFW5
 1iG8k5yid1rim4WOMvEGOt2CvHvgGHqlvZMsVC3f0cGsyy5NpVUETpQHI7YVdvuU6RCD
 FJuA==
X-Gm-Message-State: AOAM532QgBfmiQcWmH6dxipjjgI3nXE99lmvx0ZcB1WgLoPHGcvoCHmE
 ZaCr7ocuYWt/pRwBI5IYTiyjgA==
X-Google-Smtp-Source: ABdhPJzCd29Xl/wTekkJzbG2hFf7ELniw9c+535re3/QWPV7VzmtBOKv2TwjIms44WqcPc+fmic+SA==
X-Received: by 2002:adf:fe90:: with SMTP id l16mr3672440wrr.222.1589972604221; 
 Wed, 20 May 2020 04:03:24 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u65sm2743050wmg.8.2020.05.20.04.03.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 04:03:23 -0700 (PDT)
Date: Wed, 20 May 2020 13:03:20 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20200520110320.GT206103@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?=
 <christian.koenig@amd.com>, 
 DRI Development <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Lucas Stach <l.stach@pengutronix.de>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Ben Skeggs <bskeggs@redhat.com>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Oded Gabbay <oded.gabbay@gmail.com>, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, linux-rdma@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>
References: <20200519132756.682888-1-daniel.vetter@ffwll.ch>
 <be86b73c-2fb3-a6c0-5a12-004af051210f@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <be86b73c-2fb3-a6c0-5a12-004af051210f@amd.com>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Oded Gabbay <oded.gabbay@gmail.com>, amd-gfx@lists.freedesktop.org,
 linux-rdma@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>, Jani Nikula <jani.nikula@linux.intel.com>,
 linaro-mm-sig@lists.linaro.org, Ben Skeggs <bskeggs@redhat.com>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] dma-fence: add might_sleep annotation
	to _wait()
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

T24gV2VkLCBNYXkgMjAsIDIwMjAgYXQgMDg6NTQ6MzZBTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBBbSAxOS4wNS4yMCB1bSAxNToyNyBzY2hyaWViIERhbmllbCBWZXR0ZXI6Cj4g
PiBEbyBpdCB1bmNvbnRpb25hbGx5LCB0aGVyZSdzIGEgc2VwYXJhdGUgcGVlayBmdW5jdGlvbiB3
aXRoCj4gPiBkbWFfZmVuY2VfaXNfc2lnbmFsbGVkKCkgd2hpY2ggY2FuIGJlIGNhbGxlZCBmcm9t
IGF0b21pYyBjb250ZXh0Lgo+ID4gCj4gPiB2MjogQ29uc2Vuc3VzIGNhbGxzIGZvciBhbiB1bmNv
bmRpdGlvbmFsIG1pZ2h0X3NsZWVwIChDaHJpcywKPiA+IENocmlzdGlhbikKPiA+IAo+ID4gRnVs
bCBhdWRpdDoKPiA+IC0gZG1hLWZlbmNlLmg6IFVzZXMgTUFYX1NDSEVEVUxFX1RJTU9VVCwgZ29v
ZCBjaGFuY2UgdGhpcyBzbGVlcHMKPiA+IC0gZG1hLXJlc3YuYzogVGltZW91dCBhbHdheXMgYXQg
bGVhc3QgMQo+ID4gLSBzdC1kbWEtZmVuY2UuYzogU2F2ZSB0byBzbGVlcCBpbiB0ZXN0Y2FzZXMK
PiA+IC0gYW1kZ3B1X2NzLmM6IEJvdGggY2FsbGVycyBhcmUgZm9yIHZhcmlhbnRzIG9mIHRoZSB3
YWl0IGlvY3RsCj4gPiAtIGFtZGdwdV9kZXZpY2UuYzogVHdvIGNhbGxlcnMgaW4gdnJhbSByZWNv
dmVyIGNvZGUsIGJvdGggcmlnaHQgbmV4dAo+ID4gICAgdG8gbXV0ZXhfbG9jay4KPiA+IC0gYW1k
Z3B1X3ZtLmM6IFVzZSBpbiB0aGUgdm1fd2FpdCBpb2N0bCwgbmV4dCB0byBfcmVzZXJ2ZS91bnJl
c2VydmUKPiA+IC0gcmVtYWluaW5nIGZ1bmN0aW9ucyBpbiBhbWRncHU6IEFsbCBmb3IgdGVzdF9p
YiBpbXBsZW1lbnRhdGlvbnMgZm9yCj4gPiAgICB2YXJpb3VzIGVuZ2luZXMsIGNhbGxlciBmb3Ig
dGhhdCBsb29rcyBhbGwgc2FmZSAoZGVidWdmcywgZHJpdmVyCj4gPiAgICBsb2FkLCByZXNldCkK
PiA+IC0gZXRuYXZpdjogYW5vdGhlciB3YWl0IGlvY3RsCj4gPiAtIGhhYmFuYWxhYnM6IGFub3Ro
ZXIgd2FpdCBpb2N0bAo+ID4gLSBub3V2ZWF1X2ZlbmNlLmM6IGhhcmRjb2RlZCAxNSpIWiAuLi4g
Z2xvcmlvdXMKPiA+IC0gbm91dmVhdV9nZW0uYzogaGFyZGNvZGVkIDIqSFogLi4uIHNvIG5vdCBl
dmVuIHN1cGVyIGNvbnNpc3RlbnQsIGJ1dAo+ID4gICAgdGhpcyBvbmUgZG9lcyBoYXZlIGEgV0FS
Tl9PTiA6LS8gQXQgbGVhc3QgdGhpcyBvbmUgaXMgb25seSBhCj4gPiAgICBmYWxsYmFjayBwYXRo
IGZvciB3aGVuIGttYWxsb2MgZmFpbHMuIE1heWJlIHRoaXMgc2hvdWxkIGJlIHB1dCBvbnRvCj4g
PiAgICBzb21lIHdvcmtlciBsaXN0IGluc3RlYWQsIGluc3RlYWQgb2YgYSB3b3JrIHBlciB1bmFt
cCAuLi4KPiA+IC0gaTkxNS9zZWxmdGVzdHM6IEhhcmRlY29kZWQgSFogLyA0IG9yIEhaIC8gOAo+
ID4gLSBpOTE1L2d0L3NlbGZ0ZXN0czogR29pbmcgdXAgdGhlIGNhbGxjaGFpbiBsb29rcyBzYWZl
IGxvb2tpbmcgYXQKPiA+ICAgIG5lYXJieSBjYWxsZXJzCj4gPiAtIGk5MTUvZ3QvaW50ZWxfZ3Rf
cmVxdWVzdHMuYy4gV3JhcHBlZCBpbiBhIG11dGV4X2xvY2sKPiA+IC0gaTkxNS9nZW1faTkxNV9n
ZW1fd2FpdC5jOiBUaGUgaTkxNS12ZXJzaW9uIHdoaWNoIGlzIGNhbGxlZCBpbnN0ZWFkCj4gPiAg
ICBmb3IgaTkxNSBmZW5jZXMgYWxyZWFkeSBoYXMgYSBtaWdodF9zbGVlcCgpIGFubm90YXRpb24s
IHNvIGFsbCBnb29kCj4gPiAKPiA+IENjOiBBbGV4IERldWNoZXIgPGFsZXhhbmRlci5kZXVjaGVy
QGFtZC5jb20+Cj4gPiBDYzogTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+Cj4g
PiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4KPiA+IENjOiBK
b29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gPiBDYzog
Um9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+ID4gQ2M6IEJlbiBTa2VnZ3Mg
PGJza2VnZ3NAcmVkaGF0LmNvbT4KPiA+IENjOiAiVk13YXJlIEdyYXBoaWNzIiA8bGludXgtZ3Jh
cGhpY3MtbWFpbnRhaW5lckB2bXdhcmUuY29tPgo+ID4gQ2M6IE9kZWQgR2FiYmF5IDxvZGVkLmdh
YmJheUBnbWFpbC5jb20+Cj4gPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4gPiBD
YzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCj4gPiBDYzogbGludXgtcmRtYUB2Z2Vy
Lmtlcm5lbC5vcmcKPiA+IENjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gQ2M6
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IENjOiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRl
bi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+ID4gQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNo
cmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIg
PGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+IAo+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+CgppbnRlbC1nZngtY2kgYXBwcm92ZXMgdG9v
LCB0aGFua3MgdG8gYm90aCBvZiB5b3UgZm9yIHJldmlld3MsIHBhdGNoIG1lcmdlZAp0byBkcm0t
bWlzYy1uZXh0LgotRGFuaWVsCgo+IAo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEt
ZmVuY2UuYyB8IDIgKysKPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+ID4g
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIGIvZHJpdmVycy9k
bWEtYnVmL2RtYS1mZW5jZS5jCj4gPiBpbmRleCA5MGVkZjJiMjgxYjAuLjY1NmU5YWMyZDAyOCAx
MDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYwo+ID4gKysrIGIvZHJp
dmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jCj4gPiBAQCAtMjA4LDYgKzIwOCw4IEBAIGRtYV9mZW5j
ZV93YWl0X3RpbWVvdXQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGJvb2wgaW50ciwgc2lnbmVk
IGxvbmcgdGltZW91dCkKPiA+ICAgCWlmIChXQVJOX09OKHRpbWVvdXQgPCAwKSkKPiA+ICAgCQly
ZXR1cm4gLUVJTlZBTDsKPiA+ICsJbWlnaHRfc2xlZXAoKTsKPiA+ICsKPiA+ICAgCXRyYWNlX2Rt
YV9mZW5jZV93YWl0X3N0YXJ0KGZlbmNlKTsKPiA+ICAgCWlmIChmZW5jZS0+b3BzLT53YWl0KQo+
ID4gICAJCXJldCA9IGZlbmNlLT5vcHMtPndhaXQoZmVuY2UsIGludHIsIHRpbWVvdXQpOwo+IAoK
LS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0
dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5h
cm8tbW0tc2lnCg==
