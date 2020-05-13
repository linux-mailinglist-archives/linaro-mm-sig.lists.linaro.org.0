Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 457D91D0991
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 09:08:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7186860E97
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 07:08:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 61B286086C; Wed, 13 May 2020 07:08:44 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D97760D70;
	Wed, 13 May 2020 07:08:04 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8BE216086C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 07:08:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 710CA60D70; Wed, 13 May 2020 07:08:01 +0000 (UTC)
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by lists.linaro.org (Postfix) with ESMTPS id D05916086C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 07:07:59 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id m33so12654060otc.5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 00:07:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=U5dnCZ5YNvHzHQjGscrcpq9MiALGgU67N8Jq5EBQuzw=;
 b=aucAhD/uyeiktc9uQZCm4tsz1B2P1mLVfFZu0xZCF1ntIOFziJJUrUYW5p0MM13IYm
 kqe79pjkHWlrkrdBdKc8o1NhMsqyVt45cgq8MDi7qgBx6cu2A+GZxO8+fpyedYZKF76n
 IkFbcUPcjBZl+JCQJBBzM47DPy6a4QMA+55pjxHBxFdnRHc3VPdS8Bj8xGeCfhK0eGba
 7Ph5k0oSngmLJ2srnPXyZjRmz3Tor2HXrTeYlksfjTynMZGhQRr+8S6VVkVz8kNbWIR0
 /fZlnxJWTRiyAHF8AUe1dD8BXZXNaj7Y8wNMhCCijgSvMgG5619Fl7z12Kq49okQsm0b
 sSlg==
X-Gm-Message-State: AGi0PuY2S4wC9dCeJuquo15+iC8ZBYNXC0r0xwej1Kr0GpuM1fFyZgZo
 gSHwSJaOMBmY1TruqemvIm3G/B8pfjSIVqGZoR026Q==
X-Google-Smtp-Source: APiQypLDDUNEGNzAQQ9b8u81ZQsefjAzdi6bm0eh+UnIE80cVeBpyFUq2uSk3Y7c5QYPc5UTCXnFi072V/n20RqH3kg=
X-Received: by 2002:a9d:7c92:: with SMTP id q18mr20636927otn.281.1589353679188; 
 Wed, 13 May 2020 00:07:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200512085944.222637-1-daniel.vetter@ffwll.ch>
 <20200512085944.222637-10-daniel.vetter@ffwll.ch>
 <6cfd324e-0443-3a12-6a2c-25a546c68643@gmail.com>
In-Reply-To: <6cfd324e-0443-3a12-6a2c-25a546c68643@gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 13 May 2020 09:07:48 +0200
Message-ID: <CAKMK7uEwrf=CqswANbKzF1veFER5mHPHcQxR1avLXJROOGpUvg@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [RFC 09/17] drm/amdgpu: use dma-fence
	annotations in cs_submit()
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

T24gV2VkLCBNYXkgMTMsIDIwMjAgYXQgOTowMiBBTSBDaHJpc3RpYW4gS8O2bmlnCjxja29lbmln
LmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBBbSAxMi4wNS4yMCB1bSAxMDo1
OSBzY2hyaWViIERhbmllbCBWZXR0ZXI6Cj4gPiBUaGlzIGlzIGEgYml0IHRyaWNreSwgc2luY2Ug
LT5ub3RpZmllcl9sb2NrIGlzIGhlbGQgd2hpbGUgY2FsbGluZwo+ID4gZG1hX2ZlbmNlX3dhaXQg
d2UgbXVzdCBlbnN1cmUgdGhhdCBhbHNvIHRoZSByZWFkIHNpZGUgKGkuZS4KPiA+IGRtYV9mZW5j
ZV9iZWdpbl9zaWduYWxsaW5nKSBpcyBvbiB0aGUgc2FtZSBzaWRlLiBJZiB3ZSBtaXggdGhpcyB1
cAo+ID4gbG9ja2RlcCBjb21wbGFpbnRzLCBhbmQgdGhhdCdzIGFnYWluIHdoeSB3ZSB3YW50IHRv
IGhhdmUgdGhlc2UKPiA+IGFubm90YXRpb25zLgo+ID4KPiA+IEEgbmljZSBzaWRlIGVmZmVjdCBv
ZiB0aGlzIGlzIHRoYXQgYmVjYXVzZSBvZiB0aGUgZnNfcmVjbGFpbSBwcmltaW5nCj4gPiBmb3Ig
ZG1hX2ZlbmNlX2VuYWJsZSBsb2NrZGVwIG5vdyBhdXRvbWF0aWNhbGx5IGNoZWNrcyBmb3IgdXMg
dGhhdAo+ID4gbm90aGluZyBpbiBoZXJlIGFsbG9jYXRlcyBtZW1vcnksIHdpdGhvdXQgZXZlbiBy
dW5uaW5nIGFueSB1c2VycHRyCj4gPiB3b3JrbG9hZHMuCj4gPgo+ID4gQ2M6IGxpbnV4LW1lZGlh
QHZnZXIua2VybmVsLm9yZwo+ID4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwo+
ID4gQ2M6IGxpbnV4LXJkbWFAdmdlci5rZXJuZWwub3JnCj4gPiBDYzogYW1kLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPiA+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4g
PiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiBDYzogTWFh
cnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiA+IENj
OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gPiBTaWduZWQt
b2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KPiA+IC0tLQo+
ID4gICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfY3MuYyB8IDUgKysrKysKPiA+
ICAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfY3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV9jcy5jCj4gPiBpbmRleCA3NjUzZjYyYjFiMmQuLjZkYjNmM2M2Mjli
MCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9jcy5j
Cj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfY3MuYwo+ID4gQEAg
LTEyMTMsNiArMTIxMyw3IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X2NzX3N1Ym1pdChzdHJ1Y3QgYW1k
Z3B1X2NzX3BhcnNlciAqcCwKPiA+ICAgICAgIHN0cnVjdCBhbWRncHVfam9iICpqb2I7Cj4gPiAg
ICAgICB1aW50NjRfdCBzZXE7Cj4gPiAgICAgICBpbnQgcjsKPiA+ICsgICAgIGJvb2wgZmVuY2Vf
Y29va2llOwo+ID4KPiA+ICAgICAgIGpvYiA9IHAtPmpvYjsKPiA+ICAgICAgIHAtPmpvYiA9IE5V
TEw7Cj4gPiBAQCAtMTIyNyw2ICsxMjI4LDggQEAgc3RhdGljIGludCBhbWRncHVfY3Nfc3VibWl0
KHN0cnVjdCBhbWRncHVfY3NfcGFyc2VyICpwLAo+ID4gICAgICAgICovCj4gPiAgICAgICBtdXRl
eF9sb2NrKCZwLT5hZGV2LT5ub3RpZmllcl9sb2NrKTsKPiA+Cj4gPiArICAgICBmZW5jZV9jb29r
aWUgPSBkbWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZygpOwo+ID4gKwo+ID4gICAgICAgLyogSWYg
dXNlcnB0ciBhcmUgaW52YWxpZGF0ZWQgYWZ0ZXIgYW1kZ3B1X2NzX3BhcnNlcl9ib3MoKSwgcmV0
dXJuCj4gPiAgICAgICAgKiAtRUFHQUlOLCBkcm1Jb2N0bCBpbiBsaWJkcm0gd2lsbCByZXN0YXJ0
IHRoZSBhbWRncHVfY3NfaW9jdGwuCj4gPiAgICAgICAgKi8KPiA+IEBAIC0xMjY0LDEyICsxMjY3
LDE0IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X2NzX3N1Ym1pdChzdHJ1Y3QgYW1kZ3B1X2NzX3BhcnNl
ciAqcCwKPiA+ICAgICAgIGFtZGdwdV92bV9tb3ZlX3RvX2xydV90YWlsKHAtPmFkZXYsICZmcHJp
di0+dm0pOwo+ID4KPiA+ICAgICAgIHR0bV9ldV9mZW5jZV9idWZmZXJfb2JqZWN0cygmcC0+dGlj
a2V0LCAmcC0+dmFsaWRhdGVkLCBwLT5mZW5jZSk7Cj4gPiArICAgICBkbWFfZmVuY2VfZW5kX3Np
Z25hbGxpbmcoZmVuY2VfY29va2llKTsKPgo+IE1obSwgdGhpcyBjb3VsZCBjb21lIGVhcmxpZXIg
aW4gdGhlb3J5LiBFLmcuIGFmdGVyIHB1c2hpbmcgdGhlIGpvYiB0bwo+IHRoZSBzY2hlZHVsZXIu
CgpZZWFoLCBJIGhhdmUgbm90IG11Y2ggY2x1ZSBhYm91dCBob3cgYW1kZ3B1IHdvcmtzIDotKSBJ
biBwcmFjdGljZSBpdApkb2Vzbid0IG1hdHRlciBtdWNoLCBzaW5jZSB0aGUgZW5jbG9zaW5nIGFk
ZXYtPm5vdGlmaWVyX2xvY2sgaXMgYSBsb3QKbW9yZSBzdHJpY3QgYWJvdXQgd2hhdCBpdCBhbGxv
d3MgdGhhbiB0aGUgZG1hX2ZlbmNlIHNpZ25hbGxpbmcgZmFrZQpsb2NrLgotRGFuaWVsCgo+Cj4g
Q2hyaXN0aWFuLgo+Cj4gPiAgICAgICBtdXRleF91bmxvY2soJnAtPmFkZXYtPm5vdGlmaWVyX2xv
Y2spOwo+ID4KPiA+ICAgICAgIHJldHVybiAwOwo+ID4KPiA+ICAgZXJyb3JfYWJvcnQ6Cj4gPiAg
ICAgICBkcm1fc2NoZWRfam9iX2NsZWFudXAoJmpvYi0+YmFzZSk7Cj4gPiArICAgICBkbWFfZmVu
Y2VfZW5kX3NpZ25hbGxpbmcoZmVuY2VfY29va2llKTsKPiA+ICAgICAgIG11dGV4X3VubG9jaygm
cC0+YWRldi0+bm90aWZpZXJfbG9jayk7Cj4gPgo+ID4gICBlcnJvcl91bmxvY2s6Cj4KCgotLSAK
RGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KKzQxICgw
KSA3OSAzNjUgNTcgNDggLSBodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApM
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21h
aWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
