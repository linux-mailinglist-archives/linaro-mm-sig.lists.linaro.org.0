Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7062C3CD70C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jul 2021 16:45:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EAFC661413
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jul 2021 14:45:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CCE2161298; Mon, 19 Jul 2021 14:45:27 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6EF8E60991;
	Mon, 19 Jul 2021 14:45:24 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8845860847
 for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jul 2021 14:45:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7BE2560991; Mon, 19 Jul 2021 14:45:22 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by lists.linaro.org (Postfix) with ESMTPS id 7528560847
 for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jul 2021 14:45:20 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id c12so4348280wrt.3
 for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jul 2021 07:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=ykw/8dUHmnvkhINGvE8DPlnGL5xj3qE/zc/xyCib+XM=;
 b=SCi09qBfRsa6nQj+k++1X6MUBUMhFCCmGupgMlA1pY0h500TA//+5zd+4FQTiwtTXs
 yegWW0fbNaq3YrunNd5aWz0mYz2wlru6TK1+Xw1l+AsvXrkPt4xkNPFajNDjiUlEdVH6
 WfX0i4sVcP7BxDlNDf1n4PdljrV9XQsWhmTsWqotyR+pVnfq8poduGgIwOw2F/T5+Xwt
 B4J3aaqm/sIrkFLVksQ/ORJJMq/VdUNbVwAfN6AHJDDv7nyYiL2WbT013CM3T9/QWOqj
 9vPL2u5rPdxnev/vWHdd3I53p1HW8G7BETkiC/mBxUI561XqRXnFtwxTWbw5DasagA6s
 dKPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=ykw/8dUHmnvkhINGvE8DPlnGL5xj3qE/zc/xyCib+XM=;
 b=NqCjpdh2jmPmy1n7vrCPaj9pH8IL+W6pu6Nwds0Ernx+vTzABwqKUDVfx8000wnwpH
 HVfJeRw6mQjXgYzlIXP3p7T2EjoDvdZcUxkTo1sJNHhlPI2S1R5Jg8/qKgqEBizz/H0a
 /rha0jgGpYXJv0Cm14YOMCQfWHJGTTgkzC0qajnNkkF3MV8CtEqIUR1iHeESANp6uIKs
 CyM7ztacfopJsvJVKSFlKfsSFpC4CIVz05jcpD2YiDxGI1NJBNlq8GEtTlUdLJa/gaL/
 jIlqexk0HQielAYCROx9PY9KyaUcFuMktcV3KLM1hrLXee2RPjgM0FCDN13M/5Q3Yv1l
 FINg==
X-Gm-Message-State: AOAM532bP+bCpJh/pZwQTsJ7MGxaAkUosWmZh0UtEPtUqTPc0u2kIpJ7
 cfmBx2vgbRERDChQElZ2J5I=
X-Google-Smtp-Source: ABdhPJw4VG+Asie5OmOLbz/r9ip58LFhR1Ew5dwhf0A4LT62rXD/aYyyFlGCmR2Y8mPS3dfxIwk2mw==
X-Received: by 2002:a5d:598f:: with SMTP id n15mr12127271wri.133.1626705919576; 
 Mon, 19 Jul 2021 07:45:19 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:d448:2444:fe38:1227?
 ([2a02:908:1252:fb60:d448:2444:fe38:1227])
 by smtp.gmail.com with ESMTPSA id o14sm19795559wmq.31.2021.07.19.07.45.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 19 Jul 2021 07:45:19 -0700 (PDT)
To: Rob Clark <robdclark@gmail.com>
References: <20210717202924.987514-1-robdclark@gmail.com>
 <582b8869-f370-3803-60a8-df31088f8088@gmail.com>
 <CAF6AEGuaxh5FRb6h3aVkUYG7cFCpT6Lb+uuk2R8bmu3hxHs4Aw@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <6dc4ad02-2f75-7907-59d8-66fd30c490ca@gmail.com>
Date: Mon, 19 Jul 2021 16:45:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAF6AEGuaxh5FRb6h3aVkUYG7cFCpT6Lb+uuk2R8bmu3hxHs4Aw@mail.gmail.com>
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
Cc: Rob Clark <robdclark@chromium.org>,
 freedreno <freedreno@lists.freedesktop.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Emma Anholt <emma@anholt.net>, Jonathan Marek <jonathan@marek.ca>,
 Bernard Zhao <bernard@vivo.com>, Sharat Masetty <smasetty@codeaurora.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Akhil P Oommen <akhilpo@codeaurora.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Douglas Anderson <dianders@chromium.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Zhenzhong Duan <zhenzhong.duan@gmail.com>,
 "Kristian H. Kristensen" <hoegsberg@google.com>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 Dave Airlie <airlied@redhat.com>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Lee Jones <lee.jones@linaro.org>, open list <linux-kernel@vger.kernel.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTkuMDcuMjEgdW0gMTY6MjEgc2NocmllYiBSb2IgQ2xhcms6Cj4gT24gTW9uLCBKdWwgMTks
IDIwMjEgYXQgMTo0MCBBTSBDaHJpc3RpYW4gS8O2bmlnCj4gPGNrb2VuaWcubGVpY2h0enVtZXJr
ZW5AZ21haWwuY29tPiB3cm90ZToKPj4gQW0gMTcuMDcuMjEgdW0gMjI6Mjkgc2NocmllYiBSb2Ig
Q2xhcms6Cj4+PiBGcm9tOiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+Cj4+Pgo+
Pj4gQ29udmVyc2lvbiB0byBncHVfc2NoZWR1bGVyLCBhbmQgYm9udXMgcmVtb3ZhbCBvZgo+Pj4g
ZHJtX2dlbV9vYmplY3RfcHV0X2xvY2tlZCgpCj4+IE9oIHllcyBwbGVhc2UhCj4+Cj4+IElmIEkn
bSBub3QgY29tcGxldGVseSBtaXN0YWtlbiB0aGF0IHdhcyB0aGUgbGFzdCBwdXp6bGUgcGllY2Ug
bWlzc2luZyB0bwo+PiB1bmlmeSBUVE1zIGFuZCBHRU1zIHJlZmNvdW50IG9mIG9iamVjdHMuCj4+
Cj4+IE9ubHkgcHJvYmxlbSBpcyB0aGF0IEkgb25seSBzZWUgcGF0Y2ggNyBhbmQgOSBpbiBteSBp
bmJveC4gV2hlcmUgaXMgdGhlCj4+IHJlc3Q/Cj4gSG1tLCBsb29rcyBsaWtlIGl0IHNob3VsZCBo
YXZlIGFsbCBnb3R0ZW4gdG8gZHJpLWRldmVsOgo+Cj4gICAgaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvYXJjaGl2ZXMvZHJpLWRldmVsLzIwMjEtSnVseS8zMTU1NzMuaHRtbAoKV2VsbCBJ
J3ZlIGdvdCB0d28gbWFpbCBhY2NvdW50cyAoQU1ELCBHTWFpbCkgYW5kIG5laXRoZXIgb2YgdGhl
bSBzZWVzIAp0aGUgZnVsbCBzZXQuIFNvIG1vc3QgbGlrZWx5IG5vdCBhIHByb2JsZW0gb24gbXkg
c2lkZS4KCkFueXdheSB0aGUgd2hvbGUgc2V0IGlzIEFja2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmln
IAo8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPi4KClJlZ2FyZHMsCkNocmlzdGlhbi4KCj4KPiBv
ciBpZiB5b3UgcHJlZmVyIHBhdGNod29yazoKPgo+ICAgIGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVk
ZXNrdG9wLm9yZy9zZXJpZXMvOTI2ODAvCj4KPiBCUiwKPiAtUgo+Cj4+IFRoYW5rcywKPj4gQ2hy
aXN0aWFuLgo+Pgo+Pj4gUm9iIENsYXJrICgxMSk6Cj4+PiAgICAgZHJtL21zbTogRG9jcyBhbmQg
bWlzYyBjbGVhbnVwCj4+PiAgICAgZHJtL21zbTogU21hbGwgc3VibWl0cXVldWUgY3JlYXRpb24g
Y2xlYW51cAo+Pj4gICAgIGRybS9tc206IGRyb3AgZHJtX2dlbV9vYmplY3RfcHV0X2xvY2tlZCgp
Cj4+PiAgICAgZHJtOiBEcm9wIGRybV9nZW1fb2JqZWN0X3B1dF9sb2NrZWQoKQo+Pj4gICAgIGRy
bS9tc20vc3VibWl0OiBTaW1wbGlmeSBvdXQtZmVuY2UtZmQgaGFuZGxpbmcKPj4+ICAgICBkcm0v
bXNtOiBDb25zb2xpZGF0ZSBzdWJtaXQgYm8gc3RhdGUKPj4+ICAgICBkcm0vbXNtOiBUcmFjayAi
c2Vxbm8iIGZlbmNlcyBieSBpZHIKPj4+ICAgICBkcm0vbXNtOiBSZXR1cm4gRVJSX1BUUigpIGZy
b20gc3VibWl0X2NyZWF0ZSgpCj4+PiAgICAgZHJtL21zbTogQ29udmVyc2lvbiB0byBkcm0gc2No
ZWR1bGVyCj4+PiAgICAgZHJtL21zbTogRHJvcCBzdHJ1Y3RfbXV0ZXggaW4gc3VibWl0IHBhdGgK
Pj4+ICAgICBkcm0vbXNtOiBVdGlsaXplIGdwdSBzY2hlZHVsZXIgcHJpb3JpdGllcwo+Pj4KPj4+
ICAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMgICAgICAgICAgICAgICAgICAgfCAgMjIgLS0K
Pj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9tc20vS2NvbmZpZyAgICAgICAgICAgICAgICAgfCAgIDEg
Kwo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL21zbS9hZHJlbm8vYTV4eF9kZWJ1Z2ZzLmMgICB8ICAg
NCArLQo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL21zbS9hZHJlbm8vYTV4eF9ncHUuYyAgICAgICB8
ICAgNiArLQo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL21zbS9hZHJlbm8vYTV4eF9wb3dlci5jICAg
ICB8ICAgMiArLQo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL21zbS9hZHJlbm8vYTV4eF9wcmVlbXB0
LmMgICB8ICAgNyArLQo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL21zbS9hZHJlbm8vYTZ4eF9nbXUu
YyAgICAgICB8ICAxMiArLQo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL21zbS9hZHJlbm8vYTZ4eF9n
cHUuYyAgICAgICB8ICAgMiArLQo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL21zbS9hZHJlbm8vYTZ4
eF9ncHVfc3RhdGUuYyB8ICAgNCArLQo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL21zbS9hZHJlbm8v
YWRyZW5vX2dwdS5jICAgICB8ICAgNiArLQo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL21zbS9tc21f
ZHJ2LmMgICAgICAgICAgICAgICB8ICAzMCArLQo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL21zbS9t
c21fZmVuY2UuYyAgICAgICAgICAgICB8ICAzOSAtLS0KPj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9t
c20vbXNtX2ZlbmNlLmggICAgICAgICAgICAgfCAgIDIgLQo+Pj4gICAgZHJpdmVycy9ncHUvZHJt
L21zbS9tc21fZ2VtLmMgICAgICAgICAgICAgICB8ICA5MSArLS0tLS0KPj4+ICAgIGRyaXZlcnMv
Z3B1L2RybS9tc20vbXNtX2dlbS5oICAgICAgICAgICAgICAgfCAgMzcgKystCj4+PiAgICBkcml2
ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW1fc3VibWl0LmMgICAgICAgIHwgMzAwICsrKysrKysrKysr
Ky0tLS0tLS0tCj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9ncHUuYyAgICAgICAgICAg
ICAgIHwgIDUwICstLS0KPj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dwdS5oICAgICAg
ICAgICAgICAgfCAgNDEgKystCj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9yaW5nYnVm
ZmVyLmMgICAgICAgIHwgIDcwICsrKystCj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9y
aW5nYnVmZmVyLmggICAgICAgIHwgIDEyICsKPj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNt
X3N1Ym1pdHF1ZXVlLmMgICAgICAgfCAgNDkgKysrLQo+Pj4gICAgaW5jbHVkZS9kcm0vZHJtX2dl
bS5oICAgICAgICAgICAgICAgICAgICAgICB8ICAgMiAtCj4+PiAgICBpbmNsdWRlL3VhcGkvZHJt
L21zbV9kcm0uaCAgICAgICAgICAgICAgICAgIHwgIDEwICstCj4+PiAgICAyMyBmaWxlcyBjaGFu
Z2VkLCA0NDAgaW5zZXJ0aW9ucygrKSwgMzU5IGRlbGV0aW9ucygtKQo+Pj4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFy
by5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
