Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 267F5296D36
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Oct 2020 12:59:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D2B960900
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Oct 2020 10:59:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 369C666009; Fri, 23 Oct 2020 10:59:03 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 745C1665AB;
	Fri, 23 Oct 2020 10:58:26 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EB88360900
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Oct 2020 10:58:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DA737665AB; Fri, 23 Oct 2020 10:58:22 +0000 (UTC)
Received: from mail-vs1-f66.google.com (mail-vs1-f66.google.com
 [209.85.217.66])
 by lists.linaro.org (Postfix) with ESMTPS id BB52560900
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Oct 2020 10:58:21 +0000 (UTC)
Received: by mail-vs1-f66.google.com with SMTP id e3so606618vsr.8
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Oct 2020 03:58:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ItpYQ9GC5N7T8BIaRPk6eDBkbaLNrhafp2hlkR07Zf8=;
 b=jTkc6UVDmYGh7Xk3q/DBQWAP+XrMbKLtA2VVYF5oKH5LiUy30O9xaT6/Zwk6AWtN/u
 GEJ6w5w+oCmahnQtE5fgvouOjrgmlNZ1eWwX8f5QXS9EQf+lp8pthdSpVd4o3zcm4677
 DqEBsjZScAvzQVO0ycTltpuXy9aRrrH3UJdkXBrGBJ3F7cUaL0Igbr+0O8rvnxhppQ+k
 sil2pxrwMnmR06NFymFCxiFpDUjkFZc7eQ55Q7vGs6rxuzbDInjkLj2bZdhb21ep9CXv
 pElo1XeWGEZwZXsWyKCMLjE5Jo8XMhsi5MwoLd1W4ZXH9tNcunNgZyoK/+IOzoHdwcXX
 2aeQ==
X-Gm-Message-State: AOAM530NbMBcuDRnCrGzeCVwPomHqgq608WHhGY3IZ60tsRsORtKnlNx
 rqmZLGpxsPQN4W0iVzZeh72bu8s67wsChC5TX+4=
X-Google-Smtp-Source: ABdhPJzRCu5YBLYYbZrfyB1lNhHvs2A3xuz04HFQccRe3INHBEU4kBKApK9853f5c1kF9RhQUXPegvd1h6khtJJrJuU=
X-Received: by 2002:a05:6102:31b5:: with SMTP id
 d21mr796747vsh.19.1603450701006; 
 Fri, 23 Oct 2020 03:58:21 -0700 (PDT)
MIME-Version: 1.0
References: <20201019204636.139997-1-robdclark@gmail.com>
In-Reply-To: <20201019204636.139997-1-robdclark@gmail.com>
From: =?UTF-8?Q?Kristian_H=C3=B8gsberg?= <hoegsberg@gmail.com>
Date: Fri, 23 Oct 2020 12:58:09 +0200
Message-ID: <CAOeoa-fAkNGfCbmZ-nBaYyupFV4Eo8fc7pKimaWtPhczmK4h3Q@mail.gmail.com>
To: Rob Clark <robdclark@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Liviu Dudau <liviu.dudau@arm.com>, Akhil P Oommen <akhilpo@codeaurora.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Eric Anholt <eric@anholt.net>,
 AngeloGioacchino Del Regno <kholk11@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, Emil Velikov <emil.velikov@collabora.com>,
 Rob Clark <robdclark@chromium.org>, Jonathan Marek <jonathan@marek.ca>,
 Matthias Kaehlcke <mka@chromium.org>, Thierry Reding <treding@nvidia.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 Sharat Masetty <smasetty@codeaurora.org>,
 Abhinav Kumar <abhinavk@codeaurora.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Rajendra Nayak <rnayak@codeaurora.org>,
 Harigovindan P <harigovi@codeaurora.org>,
 open list <linux-kernel@vger.kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Brian Masney <masneyb@onstation.org>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <freedreno@lists.freedesktop.org>
Subject: Re: [Linaro-mm-sig] [Freedreno] [PATCH v3 00/23] drm/msm:
	de-struct_mutex-ification
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

T24gTW9uLCBPY3QgMTksIDIwMjAgYXQgMTA6NDUgUE0gUm9iIENsYXJrIDxyb2JkY2xhcmtAZ21h
aWwuY29tPiB3cm90ZToKPgo+IEZyb206IFJvYiBDbGFyayA8cm9iZGNsYXJrQGNocm9taXVtLm9y
Zz4KPgo+IFRoaXMgZG9lc24ndCByZW1vdmUgKmFsbCogdGhlIHN0cnVjdF9tdXRleCwgYnV0IGl0
IGNvdmVycyB0aGUgd29yc3QKPiBvZiBpdCwgaWUuIHNocmlua2VyL21hZHZpc2UvZnJlZS9yZXRp
cmUuICBUaGUgc3VibWl0IHBhdGggc3RpbGwgdXNlcwo+IHN0cnVjdF9tdXRleCwgYnV0IGl0IHN0
aWxsIG5lZWRzICpzb21ldGhpbmcqIHNlcmlhbGl6ZSBhIHBvcnRpb24gb2YKPiB0aGUgc3VibWl0
IHBhdGgsIGFuZCBsb2NrX3N0YXQgbW9zdGx5IGp1c3Qgc2hvd3MgdGhlIGxvY2sgY29udGVudGlv
bgo+IHRoZXJlIGJlaW5nIHdpdGggb3RoZXIgc3VibWl0cy4gIEFuZCB0aGVyZSBhcmUgYSBmZXcg
b3RoZXIgYml0cyBvZgo+IHN0cnVjdF9tdXRleCB1c2FnZSBpbiBsZXNzIGNyaXRpY2FsIHBhdGhz
IChkZWJ1Z2ZzLCBldGMpLiAgQnV0IHRoaXMKPiBzZWVtcyBsaWtlIGEgcmVhc29uYWJsZSBzdGVw
IGluIHRoZSByaWdodCBkaXJlY3Rpb24uCj4KPiB2MjogdGVhY2ggbG9ja2RlcCBhYm91dCBzaHJp
bmtlciBsb2NraW5nIHBhdHRlcnMgKGRhbnZldCkgYW5kCj4gICAgIGNvbnZlcnQgdG8gb2JqLT5y
ZXN2IGxvY2tpbmcgKGRhbnZldCkKPiB2MzogZml4IGdldF92YWRkciBsb2NraW5nIGZvciBsZWdh
Y3kgdXNlcnNwYWNlIChyZWxvY3MpLCBkZXZjb3JlZHVtcCwKPiAgICAgYW5kIHJkL2hhbmdyZAoK
Rm9yIHRoZSBzZXJpZXM6CgpSZXZpZXdlZC1ieTogS3Jpc3RpYW4gSC4gS3Jpc3RlbnNlbiA8aG9l
Z3NiZXJnQGdvb2dsZS5jb20+Cgo+IFJvYiBDbGFyayAoMjMpOgo+ICAgZHJtL21zbTogRml4IGEg
Y291cGxlIGluY29ycmVjdCB1c2FnZXMgb2YgZ2V0X3ZhZGRyX2FjdGl2ZSgpCj4gICBkcm0vbXNt
L2dlbTogQWRkIG9iai0+bG9jayB3cmFwcGVycwo+ICAgZHJtL21zbS9nZW06IFJlbmFtZSBpbnRl
cm5hbCBnZXRfaW92YV9sb2NrZWQgaGVscGVyCj4gICBkcm0vbXNtL2dlbTogTW92ZSBwcm90b3R5
cGVzIHRvIG1zbV9nZW0uaAo+ICAgZHJtL21zbS9nZW06IEFkZCBzb21lIF9sb2NrZWQoKSBoZWxw
ZXJzCj4gICBkcm0vbXNtL2dlbTogTW92ZSBsb2NraW5nIGluIHNocmlua2VyIHBhdGgKPiAgIGRy
bS9tc20vc3VibWl0OiBNb3ZlIGNvcHlfZnJvbV91c2VyIGFoZWFkIG9mIGxvY2tpbmcgYm9zCj4g
ICBkcm0vbXNtOiBEbyBycG0gZ2V0IHNvb25lciBpbiB0aGUgc3VibWl0IHBhdGgKPiAgIGRybS9t
c20vZ2VtOiBTd2l0Y2ggb3ZlciB0byBvYmotPnJlc3YgZm9yIGxvY2tpbmcKPiAgIGRybS9tc206
IFVzZSBjb3JyZWN0IGRybV9nZW1fb2JqZWN0X3B1dCgpIGluIGZhaWwgY2FzZQo+ICAgZHJtL21z
bTogRHJvcCBjaGF0dHkgdHJhY2UKPiAgIGRybS9tc206IE1vdmUgdXBkYXRlX2ZlbmNlcygpCj4g
ICBkcm0vbXNtOiBBZGQgcHJpdi0+bW1fbG9jayB0byBwcm90ZWN0IGFjdGl2ZS9pbmFjdGl2ZSBs
aXN0cwo+ICAgZHJtL21zbTogRG9jdW1lbnQgYW5kIHJlbmFtZSBwcmVlbXB0X2xvY2sKPiAgIGRy
bS9tc206IFByb3RlY3QgcmluZy0+c3VibWl0cyB3aXRoIGl0J3Mgb3duIGxvY2sKPiAgIGRybS9t
c206IFJlZmNvdW50IHN1Ym1pdHMKPiAgIGRybS9tc206IFJlbW92ZSBvYmotPmdwdQo+ICAgZHJt
L21zbTogRHJvcCBzdHJ1Y3RfbXV0ZXggZnJvbSB0aGUgcmV0aXJlIHBhdGgKPiAgIGRybS9tc206
IERyb3Agc3RydWN0X211dGV4IGluIGZyZWVfb2JqZWN0KCkgcGF0aAo+ICAgZHJtL21zbTogUmVt
b3ZlIG1zbV9nZW1fZnJlZV93b3JrCj4gICBkcm0vbXNtOiBEcm9wIHN0cnVjdF9tdXRleCBpbiBt
YWR2aXNlIHBhdGgKPiAgIGRybS9tc206IERyb3Agc3RydWN0X211dGV4IGluIHNocmlua2VyIHBh
dGgKPiAgIGRybS9tc206IERvbid0IGltcGxpY2l0LXN5bmMgaWYgb25seSBhIHNpbmdsZSByaW5n
Cj4KPiAgZHJpdmVycy9ncHUvZHJtL21zbS9hZHJlbm8vYTV4eF9ncHUuYyAgICAgfCAgIDYgKy0K
PiAgZHJpdmVycy9ncHUvZHJtL21zbS9hZHJlbm8vYTV4eF9wcmVlbXB0LmMgfCAgMTIgKy0KPiAg
ZHJpdmVycy9ncHUvZHJtL21zbS9hZHJlbm8vYTZ4eF9ncHUuYyAgICAgfCAgIDYgKy0KPiAgZHJp
dmVycy9ncHUvZHJtL21zbS9kaXNwL21kcDQvbWRwNF9jcnRjLmMgfCAgIDEgKwo+ICBkcml2ZXJz
L2dwdS9kcm0vbXNtL2Rpc3AvbWRwNS9tZHA1X2NydGMuYyB8ICAgMSArCj4gIGRyaXZlcnMvZ3B1
L2RybS9tc20vZHNpL2RzaV9ob3N0LmMgICAgICAgIHwgICAxICsKPiAgZHJpdmVycy9ncHUvZHJt
L21zbS9tc21fZGVidWdmcy5jICAgICAgICAgfCAgIDcgKwo+ICBkcml2ZXJzL2dwdS9kcm0vbXNt
L21zbV9kcnYuYyAgICAgICAgICAgICB8ICAyMSArLQo+ICBkcml2ZXJzL2dwdS9kcm0vbXNtL21z
bV9kcnYuaCAgICAgICAgICAgICB8ICA3MyArLS0tLS0KPiAgZHJpdmVycy9ncHUvZHJtL21zbS9t
c21fZmJkZXYuYyAgICAgICAgICAgfCAgIDEgKwo+ICBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9n
ZW0uYyAgICAgICAgICAgICB8IDI2NiArKysrKysrKysrKy0tLS0tLS0tLS0tCj4gIGRyaXZlcnMv
Z3B1L2RybS9tc20vbXNtX2dlbS5oICAgICAgICAgICAgIHwgMTMzICsrKysrKysrKy0tCj4gIGRy
aXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbV9zaHJpbmtlci5jICAgIHwgIDgxICsrLS0tLS0KPiAg
ZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtX3N1Ym1pdC5jICAgICAgfCAxNTggKysrKysrKyst
LS0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9ncHUuYyAgICAgICAgICAgICB8IDExMCAr
KysrKy0tLS0KPiAgZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ3B1LmggICAgICAgICAgICAgfCAg
IDUgKy0KPiAgZHJpdmVycy9ncHUvZHJtL21zbS9tc21fcmQuYyAgICAgICAgICAgICAgfCAgIDIg
Ky0KPiAgZHJpdmVycy9ncHUvZHJtL21zbS9tc21fcmluZ2J1ZmZlci5jICAgICAgfCAgIDMgKy0K
PiAgZHJpdmVycy9ncHUvZHJtL21zbS9tc21fcmluZ2J1ZmZlci5oICAgICAgfCAgMTMgKy0KPiAg
MTkgZmlsZXMgY2hhbmdlZCwgNDk1IGluc2VydGlvbnMoKyksIDQwNSBkZWxldGlvbnMoLSkKPgo+
IC0tCj4gMi4yNi4yCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IEZyZWVkcmVubyBtYWlsaW5nIGxpc3QKPiBGcmVlZHJlbm9AbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9mcmVlZHJlbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK
