Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8786E513060
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Apr 2022 11:55:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BCD09401F7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Apr 2022 09:55:07 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	by lists.linaro.org (Postfix) with ESMTPS id DC5BC401F7
	for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Apr 2022 09:55:02 +0000 (UTC)
Received: by mail-lf1-f50.google.com with SMTP id y32so7648173lfa.6
        for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Apr 2022 02:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=V0XeT7IXBftt0apFPjjxPnSRBK1X7ldQ9u0yIYHiPlU=;
        b=YCg4LQSCCHVcvC/S2cQuookZz0GMC3S83n5ovXl/cTO4vUS871u/K85uaoRnHXZi5n
         s8HCkmeTShWkJtH/RqXwANzdsUpcmgKpDfbzBqKiXU7uJ6y/1V3S9dxb8m8M+jiijopy
         QA4yKCLxZguaqkZJ64WGbrnlJOHQkRyG8j9nUnVtKNMnMXpfRSznH0OX9F+VIoHEIv1n
         ulAWX0gv39ng0xftKnC1sBNS+j1hQ5UpILJw+cEeg9Y66AOHRf+sOQpVKsLiXa64cyui
         guTOM8XV+qM+BriDGY6F6KIbFr2f9PgoC9XHjHUfqp3QxuZ7owy9GFz3dzitjKq+QOKx
         RE4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=V0XeT7IXBftt0apFPjjxPnSRBK1X7ldQ9u0yIYHiPlU=;
        b=71b6q2Tz7F4QXEye5YIhXuJhXMCmTAgN3Zn6bDUkoZUSszbw7buvT1VFQya0TF6T8h
         pnRJct6eFqtvAJOQU33sZvn08BJIRnSdWyH107lqHqPCJz1iQy7xwuuUgIST/GnBGzgS
         CbN7Hb72jntt2LbISBCUgwGt0oneqNVUQOheyazukWgphiXbf62w+RbDk2IN3jRWfIwX
         l+oz85c7dDNzeM0I5ndfDJZ1sr4mYcFj72hjNeVrGGiyikNeOnmEbNcKQCLrDMYCJ9vq
         r2SUHy9rbnutmXIPNqeQqnrqzDWHA3vhv8jxasBa1Enb9ohDWn6tgLosjD3k3N6jcnE9
         MnVA==
X-Gm-Message-State: AOAM531u+UUnqYyZrBw0ZLkLScft9dgz9DgH5hJgY69nvwf0HMn/hpD8
	/NAYQf+cdUCiO4KNvJH/RkDHRmOuHeOZI6+keRS9SD2n
X-Google-Smtp-Source: ABdhPJy0ybox27E6e84jHMcEqHixOb1KpVI0stK6pmS/L2GkVDTmApxzKoDq6QSEYP6f0A9CtGwOMHzZsfN+e/ROgxI=
X-Received: by 2002:a05:6512:110c:b0:472:3d96:bd24 with SMTP id
 l12-20020a056512110c00b004723d96bd24mr678751lfg.389.1651139701661; Thu, 28
 Apr 2022 02:55:01 -0700 (PDT)
MIME-Version: 1.0
References: <20220428063924.3570409-1-songyuanzheng@huawei.com> <e4e5bd41-df5b-bb65-b92f-47122d1e7738@amd.com>
In-Reply-To: <e4e5bd41-df5b-bb65-b92f-47122d1e7738@amd.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Thu, 28 Apr 2022 15:24:49 +0530
Message-ID: <CAO_48GG6vX35HTZNXz5Bqf341K9+6a5M63Jxb+nYSbpWDqMH=w@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Message-ID-Hash: 73VEM44DT7GTC4BJGED24GKG4TGXHV3Z
X-Message-ID-Hash: 73VEM44DT7GTC4BJGED24GKG4TGXHV3Z
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Yuanzheng Song <songyuanzheng@huawei.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: add the name field to the table header
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/73VEM44DT7GTC4BJGED24GKG4TGXHV3Z/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQ2hyaXN0aWFuLA0KDQpPbiBUaHUsIDI4IEFwciAyMDIyIGF0IDEzOjMzLCBDaHJpc3RpYW4g
S8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPg0KPiBBbSAyOC4wNC4y
MiB1bSAwODozOSBzY2hyaWViIFl1YW56aGVuZyBTb25nOg0KPiA+ICdjYXQgL3N5cy9rZXJuZWwv
ZGVidWcvZG1hX2J1Zi9idWZpbmZvJyB3aWxsIHByaW50IHRoZSBEbWEtYnVmDQo+ID4gT2JqZWN0
cycgaW5mb3JtYXRpb24gd2hlbiB0aGUgQ09ORklHX0RFQlVHX0ZTPXkuDQo+ID4gSG93ZXZlciwg
dGhlIHByaW50ZWQgdGFibGUgaGVhZGVyIGluZm9ybWF0aW9uIGRvZXMgbm90IGNvbnRhaW4NCj4g
PiB0aGUgbmFtZSBmaWVsZC4gU28gd2UgbmVlZCB0byBhZGQgdGhlIG5hbWUgZmllbGQgdG8gdGhl
IHRhYmxlDQo+ID4gaGVhZGVyIGFuZCB1c2UgdGhlICc8bm9uZT4nIHRvIHJlcGxhY2UgdGhlIGVt
cHR5IGJ1Zl9vYmotPm5hbWUuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBZdWFuemhlbmcgU29u
ZyA8c29uZ3l1YW56aGVuZ0BodWF3ZWkuY29tPg0KPg0KPiBSZXZpZXdlZC1ieTogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPg0KPiBTdW1pdCBkbyB5b3Ugd2Fu
dCB0byBwdXNoIHRoaXMgb3Igc2hvdWxkIEkgZ28gYWhlYWQ/DQoNCk5vIHdvcnJpZXMsIEkgY2Fu
IHB1c2ggaXQgb3V0Lg0KDQpUaGFua3MgOikNCj4NCj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvZG1h
LWJ1Zi9kbWEtYnVmLmMgfCA0ICsrLS0NCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEt
YnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4gPiBpbmRleCA3OTc5
NTg1N2JlM2UuLmEyZjlhMTgxNWUzOCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYv
ZG1hLWJ1Zi5jDQo+ID4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPiA+IEBAIC0x
MzUxLDcgKzEzNTEsNyBAQCBzdGF0aWMgaW50IGRtYV9idWZfZGVidWdfc2hvdyhzdHJ1Y3Qgc2Vx
X2ZpbGUgKnMsIHZvaWQgKnVudXNlZCkNCj4gPiAgICAgICAgICAgICAgIHJldHVybiByZXQ7DQo+
ID4NCj4gPiAgICAgICBzZXFfcHV0cyhzLCAiXG5EbWEtYnVmIE9iamVjdHM6XG4iKTsNCj4gPiAt
ICAgICBzZXFfcHJpbnRmKHMsICIlLThzXHQlLThzXHQlLThzXHQlLThzXHRleHBfbmFtZVx0JS04
c1xuIiwNCj4gPiArICAgICBzZXFfcHJpbnRmKHMsICIlLThzXHQlLThzXHQlLThzXHQlLThzXHRl
eHBfbmFtZVx0JS04c1x0bmFtZVxuIiwNCj4gPiAgICAgICAgICAgICAgICAgICJzaXplIiwgImZs
YWdzIiwgIm1vZGUiLCAiY291bnQiLCAiaW5vIik7DQo+ID4NCj4gPiAgICAgICBsaXN0X2Zvcl9l
YWNoX2VudHJ5KGJ1Zl9vYmosICZkYl9saXN0LmhlYWQsIGxpc3Rfbm9kZSkgew0KPiA+IEBAIC0x
MzY4LDcgKzEzNjgsNyBAQCBzdGF0aWMgaW50IGRtYV9idWZfZGVidWdfc2hvdyhzdHJ1Y3Qgc2Vx
X2ZpbGUgKnMsIHZvaWQgKnVudXNlZCkNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBmaWxlX2NvdW50KGJ1Zl9vYmotPmZpbGUpLA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGJ1Zl9vYmotPmV4cF9uYW1lLA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGZpbGVfaW5vZGUoYnVmX29iai0+ZmlsZSktPmlfaW5vLA0KPiA+IC0gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGJ1Zl9vYmotPm5hbWUgPzogIiIpOw0KPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGJ1Zl9vYmotPm5hbWUgPzogIjxub25lPiIpOw0KPiA+ICAgICAgICAg
ICAgICAgc3Bpbl91bmxvY2soJmJ1Zl9vYmotPm5hbWVfbG9jayk7DQo+ID4NCj4gPiAgICAgICAg
ICAgICAgIGRtYV9yZXN2X2Rlc2NyaWJlKGJ1Zl9vYmotPnJlc3YsIHMpOw0KPg0KDQpCZXN0LA0K
U3VtaXQuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxp
c3RzLmxpbmFyby5vcmcK
