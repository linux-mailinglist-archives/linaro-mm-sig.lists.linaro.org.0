Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 578896043D9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 13:51:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5F85A3EE0B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 11:50:59 +0000 (UTC)
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	by lists.linaro.org (Postfix) with ESMTPS id 8CFD83F1AA
	for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Sep 2022 14:14:02 +0000 (UTC)
Received: by mail-yb1-f182.google.com with SMTP id e187so3544701ybh.10
        for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Sep 2022 07:14:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=A5SHHtL7QW2l54muzkKKvK4LNnKVv9lnQOHGxIBuRuE=;
        b=I0YUoX79VzdB1su5c8YsyhJqRmH5BNT4YqtIql7uMHjv4tNfOgHifd92qluReG4d/X
         i+jYW3HyitXzOX4IonS8R0ZONlFkR1k7gzgwSfoZiyoaclz0ttvaXwLoZb7ZtxANBu5Y
         3z526ei+ptSUlr9B43I+BPqd8EpQylJ4cBJQM2NB3es8UnHI+rMDDmASlishpV745ZiR
         FmF+Tn/kij0Q3tHjPuP7PPUW7rGa0WojF+SdtI5DCR6jLM2zwity5aoAXKaUhJv2tGwk
         A1NAE6VKh7Q2gKgry+vltVNnOPdcodRj2m1ez7wQy3SuDN63Pt0F5Dl77GROsIrV6LU3
         c7sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=A5SHHtL7QW2l54muzkKKvK4LNnKVv9lnQOHGxIBuRuE=;
        b=3yY/JlOJinYgV5BEnLdCbvI6zBkajSaXdfrh0KdIByZbFALDxfxMlM2zxHcl7d2hb1
         VPxthUbperV11e3rbS+1iFdEYDoOtS0o+azRpQ7eXzfc2HLfajzn+zh+6aLNzRXyMYf+
         AvQPSLt695a7oEE+9Fb+WK9PsWQ8JBen9UxfwIhgxKipsasfLzjVhv9djIuN2Vx403d4
         3JnPH0fisFRTlkSKzLFUhGE4iw513Mc5iVW7Ld0q0YYL3pLJbmcWi2d1ZG0beTp46JFX
         MhJw+GYGJgmof7EaHNCNLwNIFZKdKClfJrPw0TcBIg4yv5E/bov7dmtOovujeT4P/F1H
         YfyQ==
X-Gm-Message-State: ACrzQf38mqYf5HABF0AAXrveSZ+Lmn91w/jdGOVEiEFTtrKin+KPgcMV
	1iBqJzzjFg/X7xPwFyf9MkknDTsVzzGsvLWKSRzB2ffT
X-Google-Smtp-Source: AMsMyM5ptp/xJcYbBs/zLcmhTWf9yaT5sYYL81f6HBIkVW4YVsWA9kHYXFc60Kp909nkSHb5MmXRrVuHNeF6LJJFSRY=
X-Received: by 2002:a25:af52:0:b0:6b3:de78:452a with SMTP id
 c18-20020a25af52000000b006b3de78452amr10092889ybj.157.1663683242012; Tue, 20
 Sep 2022 07:14:02 -0700 (PDT)
MIME-Version: 1.0
References: <20220913192757.37727-1-dmitry.osipenko@collabora.com> <20220913192757.37727-16-dmitry.osipenko@collabora.com>
In-Reply-To: <20220913192757.37727-16-dmitry.osipenko@collabora.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Tue, 20 Sep 2022 19:43:49 +0530
Message-ID: <CAO_48GFtLjR657nO+yh9KwsrWbNmGVsf7srHj19biO+NauYt4w@mail.gmail.com>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NXVWOHKZHWN76YWQ2Z2QOCB73S2BKHN7
X-Message-ID-Hash: NXVWOHKZHWN76YWQ2Z2QOCB73S2BKHN7
X-Mailman-Approved-At: Wed, 19 Oct 2022 11:49:21 +0000
CC: David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Daniel Vetter <daniel@ffwll.ch>, Daniel Almeida <daniel.almeida@collabora.com>, Gert Wollny <gert.wollny@collabora.com>, Gustavo Padovan <gustavo.padovan@collabora.com>, Daniel Stone <daniel@fooishbar.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Clark <robdclark@gmail.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thierry Reding <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Alex Deucher <alexander.deucher@amd.com>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Qiang Yu <yuq825@gmail
 .com>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Amol Maheshwari <amahesh@qti.qualcomm.com>, Jason Gunthorpe <jgg@ziepe.ca>, Leon Romanovsky <leon@kernel.org>, Juergen Gross <jgross@suse.com>, Stefano Stabellini <sstabellini@kernel.org>, Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>, Tomi Valkeinen <tomba@kernel.org>, Russell King <linux@armlinux.org.uk>, Christian Gmeiner <christian.gmeiner@gmail.com>, Ruhl Michael J <michael.j.ruhl@intel.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 15/21] dma-buf: Move dma_buf_vmap() to dynamic locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NXVWOHKZHWN76YWQ2Z2QOCB73S2BKHN7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgRG1pdHJ5LA0KDQpUaGFua3MgdmVyeSBtdWNoIGZvciB0aGUgc2VyaWVzLg0KDQpPbiBXZWQs
IDE0IFNlcHQgMjAyMiBhdCAwMDo1OSwgRG1pdHJ5IE9zaXBlbmtvDQo8ZG1pdHJ5Lm9zaXBlbmtv
QGNvbGxhYm9yYS5jb20+IHdyb3RlOg0KPg0KPiBNb3ZlIGRtYV9idWZfdm1hcC92dW5tYXBfdW5s
b2NrZWQoKSBmdW5jdGlvbnMgdG8gdGhlIGR5bmFtaWMgbG9ja2luZw0KPiBzcGVjaWZpY2F0aW9u
IGJ5IGFzc2VydGluZyB0aGF0IHRoZSByZXNlcnZhdGlvbiBsb2NrIGlzIGhlbGQuDQpUaGFua3Mg
Zm9yIHRoZSBwYXRjaDsganVzdCBhIG1pbm9yIG5pdCAtIEkgdGhpbmsgeW91IG1lYW4gZG1hX2J1
Zl92bWFwDQovIHZ1bm1hcCgpIGhlcmUsIGFuZCBub3QgX3VubG9ja2VkPw0KDQpCZXN0LA0KU3Vt
aXQuDQoNCg0KPg0KPiBBY2tlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgT3NpcGVua28gPGRtaXRyeS5vc2lw
ZW5rb0Bjb2xsYWJvcmEuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMg
fCA0ICsrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykNCj4NCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1
Zi5jDQo+IGluZGV4IDUwZGI3NTcxZGM0Yi4uODBmZDZjY2M4OGM2IDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVm
LmMNCj4gQEAgLTE0NTAsNiArMTQ1MCw4IEBAIGludCBkbWFfYnVmX3ZtYXAoc3RydWN0IGRtYV9i
dWYgKmRtYWJ1Ziwgc3RydWN0IGlvc3lzX21hcCAqbWFwKQ0KPiAgICAgICAgIGlmIChXQVJOX09O
KCFkbWFidWYpKQ0KPiAgICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7DQo+DQo+ICsgICAg
ICAgZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQoZG1hYnVmLT5yZXN2KTsNCj4gKw0KPiAgICAgICAgIGlm
ICghZG1hYnVmLT5vcHMtPnZtYXApDQo+ICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsN
Cj4NCj4gQEAgLTE1MTAsNiArMTUxMiw4IEBAIHZvaWQgZG1hX2J1Zl92dW5tYXAoc3RydWN0IGRt
YV9idWYgKmRtYWJ1Ziwgc3RydWN0IGlvc3lzX21hcCAqbWFwKQ0KPiAgICAgICAgIGlmIChXQVJO
X09OKCFkbWFidWYpKQ0KPiAgICAgICAgICAgICAgICAgcmV0dXJuOw0KPg0KPiArICAgICAgIGRt
YV9yZXN2X2Fzc2VydF9oZWxkKGRtYWJ1Zi0+cmVzdik7DQo+ICsNCj4gICAgICAgICBCVUdfT04o
aW9zeXNfbWFwX2lzX251bGwoJmRtYWJ1Zi0+dm1hcF9wdHIpKTsNCj4gICAgICAgICBCVUdfT04o
ZG1hYnVmLT52bWFwcGluZ19jb3VudGVyID09IDApOw0KPiAgICAgICAgIEJVR19PTighaW9zeXNf
bWFwX2lzX2VxdWFsKCZkbWFidWYtPnZtYXBfcHRyLCBtYXApKTsNCj4gLS0NCj4gMi4zNy4zDQo+
DQoNCg0KLS0NClRoYW5rcyBhbmQgcmVnYXJkcywNCg0KU3VtaXQgU2Vtd2FsIChoZSAvIGhpbSkN
ClRlY2ggTGVhZCAtIExDRywgVmVydGljYWwgVGVjaG5vbG9naWVzDQpMaW5hcm8ub3JnIOKUgiBP
cGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
