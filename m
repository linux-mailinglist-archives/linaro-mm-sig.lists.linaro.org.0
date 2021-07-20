Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3EF3CFBDA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jul 2021 16:17:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BE48F619D4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jul 2021 14:17:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B5EC96198D; Tue, 20 Jul 2021 14:17:07 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C1E6461813;
	Tue, 20 Jul 2021 14:17:03 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 03515617DA
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jul 2021 14:17:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E72C661813; Tue, 20 Jul 2021 14:17:01 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by lists.linaro.org (Postfix) with ESMTPS id DCD02617DA
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jul 2021 14:16:59 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id
 l18-20020a1ced120000b029014c1adff1edso1593182wmh.4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jul 2021 07:16:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=TXQS3ybKJ0ZbkZfIX5IltjKkTwBCNLiU4PEiSSGE69s=;
 b=fS6P0HprhHVqt7njX4zsr1cfUaOD9uqzXFlq8GwYoG9u7dhPs7+KZoijw4mRGTc6ZJ
 9ip9OpMe44ev6qbFeTA4X2iwxoBsK1ahqaLTmW5XtR3f2w89LeUA2yNNM9hYGzVVsWsE
 n9wehcRw3zcweCcTIakCZzTvqOOW8O/gBndl78UtpWnQXlLJeSTwOCLcFP2h/iwIWAep
 WFef5gixFYVTOTKLmK5UizdJhaeAMScFw744qAruW2BE1dfQzBZBAAeDt3nCZRQUAUsV
 3p0j3Xd+Tm6B4bcnXNeBnFzuHxo/s2Xw55p9W7VfqKun5MgOef69bIDDp6mM2PoRhrif
 QCwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=TXQS3ybKJ0ZbkZfIX5IltjKkTwBCNLiU4PEiSSGE69s=;
 b=G/HIyV2BYBhRdwJnXd/0gpQJYFrfeunR6OvDzFky2Aj+gzQgRAsLI9ml2Etwuc9TJF
 vkpsFWMMfj54oslPn/czsCBae4Ci52SwY4idK/p3xlGMmXBwaXILpdNl0jwS7WLSjqvF
 aFu4sBjHOE1Ey021Ti9LsGUDhX/0AAtCHpzJA5bElTAiIDId9+osD75RUl5DXXG9aOOv
 34tMAaDjTDoJwhbXCJr+P5ieO6sFM3VHx8fFrMEpzsm5acHGnKtbZZNTunlVlYdaTxjA
 2eKXz/7a4Qp2TrVVWSKwkPDj5eo5rYA04C2yHJlljZU6LYAwRe9csARMkEWaGtt+C7MK
 xACA==
X-Gm-Message-State: AOAM532PjhaVR7+HGBcpvWXuPZSUeffYkyYAmbGiyUn/642xivex3vy0
 THlRFZEhwObuyCfQj/8yQ2o=
X-Google-Smtp-Source: ABdhPJzmqPa2i5KSmtCvUDun0KoyEZNVyJrq9l+T7IFFszZLyePe4YqWGv7DHNZLn3Ad+2Hwn2rkKQ==
X-Received: by 2002:a7b:ce95:: with SMTP id q21mr37604576wmj.101.1626790618933; 
 Tue, 20 Jul 2021 07:16:58 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:8651:5b5e:8648:2fd0?
 ([2a02:908:1252:fb60:8651:5b5e:8648:2fd0])
 by smtp.gmail.com with ESMTPSA id e6sm27745155wrg.18.2021.07.20.07.16.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Jul 2021 07:16:58 -0700 (PDT)
To: Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org,
 Rob Clark <robdclark@chromium.org>, freedreno@lists.freedesktop.org,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 open list <linux-kernel@vger.kernel.org>, Jonathan Marek
 <jonathan@marek.ca>, Emma Anholt <emma@anholt.net>,
 Bernard Zhao <bernard@vivo.com>, Sharat Masetty <smasetty@codeaurora.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Akhil P Oommen <akhilpo@codeaurora.org>,
 Douglas Anderson <dianders@chromium.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>, Zhenzhong Duan <zhenzhong.duan@gmail.com>,
 "Kristian H. Kristensen" <hoegsberg@google.com>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Lee Jones <lee.jones@linaro.org>, Dave Airlie <airlied@redhat.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
References: <20210717202924.987514-1-robdclark@gmail.com>
 <582b8869-f370-3803-60a8-df31088f8088@gmail.com>
 <YPbYnLBin9N4weiC@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <bbc4f7fc-9d51-695e-2bb7-62558d7523e2@gmail.com>
Date: Tue, 20 Jul 2021 16:16:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YPbYnLBin9N4weiC@phenom.ffwll.local>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 00/11] drm/msm: drm scheduler conversion
 and cleanups
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjAuMDcuMjEgdW0gMTY6MDcgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIE1vbiwgSnVs
IDE5LCAyMDIxIGF0IDEwOjQwOjU3QU0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+
IEFtIDE3LjA3LjIxIHVtIDIyOjI5IHNjaHJpZWIgUm9iIENsYXJrOgo+Pj4gRnJvbTogUm9iIENs
YXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPgo+Pj4KPj4+IENvbnZlcnNpb24gdG8gZ3B1X3Nj
aGVkdWxlciwgYW5kIGJvbnVzIHJlbW92YWwgb2YKPj4+IGRybV9nZW1fb2JqZWN0X3B1dF9sb2Nr
ZWQoKQo+PiBPaCB5ZXMgcGxlYXNlIQo+Pgo+PiBJZiBJJ20gbm90IGNvbXBsZXRlbHkgbWlzdGFr
ZW4gdGhhdCB3YXMgdGhlIGxhc3QgcHV6emxlIHBpZWNlIG1pc3NpbmcgdG8KPj4gdW5pZnkgVFRN
cyBhbmQgR0VNcyByZWZjb3VudCBvZiBvYmplY3RzLgo+IFdoeSBkb2VzIGRybS9tc20sIGEgZHJp
dmVyIG5vdCB1c2luZyB0dG0gYXQgYWxsLCBibG9jayB0dG0gcmVmYWN0b3JpbmdzPwo+IFdlIGNh
biBqdXN0IGNoZWNrIHdoZXRoZXIgdGhlIFRUTSB1c2luZyBkcml2ZXIgaXMgcG90ZW50aWFsbHkg
dXNpbmcgbG9ja2VkCj4gZmluYWwgdW5yZWYgYW5kIGhhdmUgYSBzcGVjaWFsIHZlcnNpb24gb2YK
PiBkcm1fZ2VtX29iamVjdF9wdXRfZ3VhcmFudGVlZF91bmxvY2tlZCBvciB3aGF0ZXZlciB0aGUg
YmlrZXNoZWQgd2lsbCBsb29rCj4gbGlrZSwgd2hpY2ggZG9lc24ndCBoYXZlIHRoZSBtaWd0aF9s
b2NrLgoKQmVjYXVzZSB3ZSBub3cgZG9uJ3QgaGF2ZSBhbnkgdW5yZWFsaXN0aWMgbG9jayBpbnZl
cnNpb24gYmV0d2VlbiAKZGV2LT5zdHJ1Y3RfbXV0ZXggYW5kIG9iai0+cmVzdiBsb2NrZGVwIGNh
biBjb21wbGFpbiBhbnkgbW9yZS4KCkNoZWVycywKQ2hyaXN0aWFuLgoKPgo+IEFueXdheSwgZGVl
ZCBpcyBkb25lIG5vdyA6LSkKPiAtRGFuaWVsCj4KPj4gT25seSBwcm9ibGVtIGlzIHRoYXQgSSBv
bmx5IHNlZSBwYXRjaCA3IGFuZCA5IGluIG15IGluYm94LiBXaGVyZSBpcyB0aGUKPj4gcmVzdD8K
Pj4KPj4gVGhhbmtzLAo+PiBDaHJpc3RpYW4uCj4+Cj4+PiBSb2IgQ2xhcmsgKDExKToKPj4+ICAg
ICBkcm0vbXNtOiBEb2NzIGFuZCBtaXNjIGNsZWFudXAKPj4+ICAgICBkcm0vbXNtOiBTbWFsbCBz
dWJtaXRxdWV1ZSBjcmVhdGlvbiBjbGVhbnVwCj4+PiAgICAgZHJtL21zbTogZHJvcCBkcm1fZ2Vt
X29iamVjdF9wdXRfbG9ja2VkKCkKPj4+ICAgICBkcm06IERyb3AgZHJtX2dlbV9vYmplY3RfcHV0
X2xvY2tlZCgpCj4+PiAgICAgZHJtL21zbS9zdWJtaXQ6IFNpbXBsaWZ5IG91dC1mZW5jZS1mZCBo
YW5kbGluZwo+Pj4gICAgIGRybS9tc206IENvbnNvbGlkYXRlIHN1Ym1pdCBibyBzdGF0ZQo+Pj4g
ICAgIGRybS9tc206IFRyYWNrICJzZXFubyIgZmVuY2VzIGJ5IGlkcgo+Pj4gICAgIGRybS9tc206
IFJldHVybiBFUlJfUFRSKCkgZnJvbSBzdWJtaXRfY3JlYXRlKCkKPj4+ICAgICBkcm0vbXNtOiBD
b252ZXJzaW9uIHRvIGRybSBzY2hlZHVsZXIKPj4+ICAgICBkcm0vbXNtOiBEcm9wIHN0cnVjdF9t
dXRleCBpbiBzdWJtaXQgcGF0aAo+Pj4gICAgIGRybS9tc206IFV0aWxpemUgZ3B1IHNjaGVkdWxl
ciBwcmlvcml0aWVzCj4+Pgo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYyAgICAgICAg
ICAgICAgICAgICB8ICAyMiAtLQo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL21zbS9LY29uZmlnICAg
ICAgICAgICAgICAgICB8ICAgMSArCj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vbXNtL2FkcmVuby9h
NXh4X2RlYnVnZnMuYyAgIHwgICA0ICstCj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vbXNtL2FkcmVu
by9hNXh4X2dwdS5jICAgICAgIHwgICA2ICstCj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vbXNtL2Fk
cmVuby9hNXh4X3Bvd2VyLmMgICAgIHwgICAyICstCj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vbXNt
L2FkcmVuby9hNXh4X3ByZWVtcHQuYyAgIHwgICA3ICstCj4+PiAgICBkcml2ZXJzL2dwdS9kcm0v
bXNtL2FkcmVuby9hNnh4X2dtdS5jICAgICAgIHwgIDEyICstCj4+PiAgICBkcml2ZXJzL2dwdS9k
cm0vbXNtL2FkcmVuby9hNnh4X2dwdS5jICAgICAgIHwgICAyICstCj4+PiAgICBkcml2ZXJzL2dw
dS9kcm0vbXNtL2FkcmVuby9hNnh4X2dwdV9zdGF0ZS5jIHwgICA0ICstCj4+PiAgICBkcml2ZXJz
L2dwdS9kcm0vbXNtL2FkcmVuby9hZHJlbm9fZ3B1LmMgICAgIHwgICA2ICstCj4+PiAgICBkcml2
ZXJzL2dwdS9kcm0vbXNtL21zbV9kcnYuYyAgICAgICAgICAgICAgIHwgIDMwICstCj4+PiAgICBk
cml2ZXJzL2dwdS9kcm0vbXNtL21zbV9mZW5jZS5jICAgICAgICAgICAgIHwgIDM5IC0tLQo+Pj4g
ICAgZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZmVuY2UuaCAgICAgICAgICAgICB8ICAgMiAtCj4+
PiAgICBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uYyAgICAgICAgICAgICAgIHwgIDkxICst
LS0tLQo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmggICAgICAgICAgICAgICB8
ICAzNyArKy0KPj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbV9zdWJtaXQuYyAgICAg
ICAgfCAzMDAgKysrKysrKysrKysrLS0tLS0tLS0KPj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9tc20v
bXNtX2dwdS5jICAgICAgICAgICAgICAgfCAgNTAgKy0tLQo+Pj4gICAgZHJpdmVycy9ncHUvZHJt
L21zbS9tc21fZ3B1LmggICAgICAgICAgICAgICB8ICA0MSArKy0KPj4+ICAgIGRyaXZlcnMvZ3B1
L2RybS9tc20vbXNtX3JpbmdidWZmZXIuYyAgICAgICAgfCAgNzAgKysrKy0KPj4+ICAgIGRyaXZl
cnMvZ3B1L2RybS9tc20vbXNtX3JpbmdidWZmZXIuaCAgICAgICAgfCAgMTIgKwo+Pj4gICAgZHJp
dmVycy9ncHUvZHJtL21zbS9tc21fc3VibWl0cXVldWUuYyAgICAgICB8ICA0OSArKystCj4+PiAg
ICBpbmNsdWRlL2RybS9kcm1fZ2VtLmggICAgICAgICAgICAgICAgICAgICAgIHwgICAyIC0KPj4+
ICAgIGluY2x1ZGUvdWFwaS9kcm0vbXNtX2RybS5oICAgICAgICAgICAgICAgICAgfCAgMTAgKy0K
Pj4+ICAgIDIzIGZpbGVzIGNoYW5nZWQsIDQ0MCBpbnNlcnRpb25zKCspLCAzNTkgZGVsZXRpb25z
KC0pCj4+PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
Cmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
