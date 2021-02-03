Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF4E30DAB3
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 14:12:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4DCDD66063
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 13:12:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3F4DE6672C; Wed,  3 Feb 2021 13:12:03 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6F1B861786;
	Wed,  3 Feb 2021 13:11:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4B101614FF
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 13:11:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 27BB361786; Wed,  3 Feb 2021 13:11:12 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
 [209.85.128.48])
 by lists.linaro.org (Postfix) with ESMTPS id 8AA54614FF
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 13:11:10 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id y187so5175250wmd.3
 for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Feb 2021 05:11:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=98vsBgcuoDvTfqJfjl4OuTtzO0K+8P+ZFHH2fOEBr9I=;
 b=myGGRtW7/n58H/6JrVEFpZTuPdgMHMmzGpQD5PnhFpGZDxIp3ifUsm78PbTisAG6vZ
 2FTCkAE1yOd+HDXOrLukVwbutEse4KlU6G6DFuvWanHWot3cf5z9fMj1B3QHExY541n4
 U+j6evqAYD9OeMXVfG6nNmqIIFynzKJKq2K7zB9DB+DEq+Sh+3WVAUQNd4PBCkhDzPHu
 3iQgdHT4nqHG2RD5zyxHbc5Q/ynTab2OZvrZQcWQV1FTG6vSOm6uNLqNwyApwtdv9Cbw
 JPT+lpZx/C7uPg4JGJgjFHj7yPaFG0YFcfy4tSbOZTZmbL/2AFpv/RJUOEeKjxI/rM5N
 eeWQ==
X-Gm-Message-State: AOAM531gDXD/g/Fy+b08SyV+TUaBfzN3K4XkOk2T8FKTTC5XPfPEriUS
 Odn/qxTGWJTPomTiYGjF8IZOeg==
X-Google-Smtp-Source: ABdhPJw5NP169kixDu9IIGlSVUkDflz1tcmHpKTjH9q2Q6cRcxxbMfh5YnqTQYWO0Bv47jyYbkn/Cg==
X-Received: by 2002:a05:600c:2305:: with SMTP id
 5mr846961wmo.183.1612357869563; 
 Wed, 03 Feb 2021 05:11:09 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id h1sm3691810wrr.73.2021.02.03.05.11.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Feb 2021 05:11:08 -0800 (PST)
Date: Wed, 3 Feb 2021 14:11:07 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <YBqg6x8jWIAe2IpH@phenom.ffwll.local>
References: <20210122133624.1751802-1-daniel.vetter@ffwll.ch>
 <97c93ad7-9aa1-dcf7-42a9-4f8076eeb135@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <97c93ad7-9aa1-dcf7-42a9-4f8076eeb135@suse.de>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] drm/todo: Add entry for moving to
	dma_resv_lock
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

T24gRnJpLCBKYW4gMjIsIDIwMjEgYXQgMDM6MDY6NDRQTSArMDEwMCwgVGhvbWFzIFppbW1lcm1h
bm4gd3JvdGU6Cj4gSGkKPiAKPiBBbSAyMi4wMS4yMSB1bSAxNDozNiBzY2hyaWViIERhbmllbCBW
ZXR0ZXI6Cj4gPiBSZXF1ZXN0ZWQgYnkgVGhvbWFzLiBJIHRoaW5rIGl0IGp1c3RpZmllcyBhIG5l
dyBsZXZlbCwgc2luY2UgSSB0cmllZAo+ID4gdG8gbWFrZSBzb21lIGZvcndhcmQgcHJvZ3Jlc3Mg
b24gdGhpcyBsYXN0IHN1bW1lciwgYW5kIGdhdmUgdXAgKGZvcgo+ID4gbm93KS4gVGhpcyBpcyB2
ZXJ5IHRyaWNreS4KPiAKPiBBZGRpbmcgaXQgdG8gdGhlIFRPRE8gbGlzdCBpcyBhIGZpcnN0IHN0
ZXAuIDopCj4gCj4gQWNrZWQtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNl
LmRlPgoKQXBwbGllZC4KLURhbmllbAoKPiAKPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogRGFuaWVs
IFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cj4gPiBDYzogTWFhcnRlbiBMYW5raG9y
c3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiA+IENjOiBNYXhpbWUgUmlw
YXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+Cj4gPiBDYzogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1t
ZXJtYW5uQHN1c2UuZGU+Cj4gPiBDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgo+
ID4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KPiA+IENjOiBTdW1pdCBTZW13
YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgo+ID4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+ID4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVs
Lm9yZwo+ID4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwo+ID4gLS0tCj4gPiAg
IERvY3VtZW50YXRpb24vZ3B1L3RvZG8ucnN0IHwgMTkgKysrKysrKysrKysrKysrKysrKwo+ID4g
ICAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEv
RG9jdW1lbnRhdGlvbi9ncHUvdG9kby5yc3QgYi9Eb2N1bWVudGF0aW9uL2dwdS90b2RvLnJzdAo+
ID4gaW5kZXggZGVhOTA4MmMwZTVmLi5mODcyZDNkMzMyMTggMTAwNjQ0Cj4gPiAtLS0gYS9Eb2N1
bWVudGF0aW9uL2dwdS90b2RvLnJzdAo+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9ncHUvdG9kby5y
c3QKPiA+IEBAIC0yMyw2ICsyMyw5IEBAIEFkdmFuY2VkOiBUcmlja3kgdGFza3MgdGhhdCBuZWVk
IGZhaXJseSBnb29kIHVuZGVyc3RhbmRpbmcgb2YgdGhlIERSTSBzdWJzeXN0ZW0KPiA+ICAgYW5k
IGdyYXBoaWNzIHRvcGljcy4gR2VuZXJhbGx5IG5lZWQgdGhlIHJlbGV2YW50IGhhcmR3YXJlIGZv
ciBkZXZlbG9wbWVudCBhbmQKPiA+ICAgdGVzdGluZy4KPiA+ICtFeHBlcnQ6IE9ubHkgYXR0ZW1w
dCB0aGVzZSBpZiB5b3UndmUgc3VjY2Vzc2Z1bGx5IGNvbXBsZXRlZCBzb21lIHRyaWNreQo+ID4g
K3JlZmFjdG9yaW5ncyBhbHJlYWR5IGFuZCBhcmUgYW4gZXhwZXJ0IGluIHRoZSBzcGVjaWZpYyBh
cmVhCj4gPiArCj4gPiAgIFN1YnN5c3RlbS13aWRlIHJlZmFjdG9yaW5ncwo+ID4gICA9PT09PT09
PT09PT09PT09PT09PT09PT09PT0KPiA+IEBAIC0xNjgsNiArMTcxLDIyIEBAIENvbnRhY3Q6IERh
bmllbCBWZXR0ZXIsIHJlc3BlY3RpdmUgZHJpdmVyIG1haW50YWluZXJzCj4gPiAgIExldmVsOiBB
ZHZhbmNlZAo+ID4gK01vdmUgQnVmZmVyIE9iamVjdCBMb2NraW5nIHRvIGRtYV9yZXN2X2xvY2so
KQo+ID4gKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4g
Kwo+ID4gK01hbnkgZHJpdmVycyBoYXZlIHRoZWlyIG93biBwZXItb2JqZWN0IGxvY2tpbmcgc2No
ZW1lLCB1c3VhbGx5IHVzaW5nCj4gPiArbXV0ZXhfbG9jaygpLiBUaGlzIGNhdXNlcyBhbGwga2lu
ZHMgb2YgdHJvdWJsZSBmb3IgYnVmZmVyIHNoYXJpbmcsIHNpbmNlCj4gPiArZGVwZW5kaW5nIHdo
aWNoIGRyaXZlciBpcyB0aGUgZXhwb3J0ZXIgYW5kIGltcG9ydGVyLCB0aGUgbG9ja2luZyBoaWVy
YXJjaHkgaXMKPiA+ICtyZXZlcnNlZC4KPiA+ICsKPiA+ICtUbyBzb2x2ZSB0aGlzIHdlIG5lZWQg
b25lIHN0YW5kYXJkIHBlci1vYmplY3QgbG9ja2luZyBtZWNoYW5pc20sIHdoaWNoIGlzCj4gPiAr
ZG1hX3Jlc3ZfbG9jaygpLiBUaGlzIGxvY2sgbmVlZHMgdG8gYmUgY2FsbGVkIGFzIHRoZSBvdXRl
cm1vc3QgbG9jaywgd2l0aCBhbGwKPiA+ICtvdGhlciBkcml2ZXIgc3BlY2lmaWMgcGVyLW9iamVj
dCBsb2NrcyByZW1vdmVkLiBUaGUgcHJvYmxlbSBpcyB0aGEgcm9sbGluZyBvdXQKPiA+ICt0aGUg
YWN0dWFsIGNoYW5nZSB0byB0aGUgbG9ja2luZyBjb250cmFjdCBpcyBhIGZsYWcgZGF5LCBkdWUg
dG8gc3RydWN0IGRtYV9idWYKPiA+ICtidWZmZXIgc2hhcmluZy4KPiA+ICsKPiA+ICtMZXZlbDog
RXhwZXJ0Cj4gPiArCj4gPiAgIENvbnZlcnQgbG9nZ2luZyB0byBkcm1fKiBmdW5jdGlvbnMgd2l0
aCBkcm1fZGV2aWNlIHBhcmFtYXRlcgo+ID4gICAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+IAo+IAo+IC0tIAo+IFRob21hcyBa
aW1tZXJtYW5uCj4gR3JhcGhpY3MgRHJpdmVyIERldmVsb3Blcgo+IFNVU0UgU29mdHdhcmUgU29s
dXRpb25zIEdlcm1hbnkgR21iSAo+IE1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgR2Vy
bWFueQo+IChIUkIgMzY4MDksIEFHIE7DvHJuYmVyZykKPiBHZXNjaMOkZnRzZsO8aHJlcjogRmVs
aXggSW1lbmTDtnJmZmVyCj4gCgoKCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVl
ciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
