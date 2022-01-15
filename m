Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4115E48F404
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 15 Jan 2022 02:18:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3F2583ED25
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 15 Jan 2022 01:18:26 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	by lists.linaro.org (Postfix) with ESMTPS id 405D43ED25
	for <linaro-mm-sig@lists.linaro.org>; Sat, 15 Jan 2022 01:17:54 +0000 (UTC)
Received: by mail-lf1-f52.google.com with SMTP id br17so35647255lfb.6
        for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Jan 2022 17:17:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=DSUCsXvUq5CC+YLJR6sM+UncKVzG/eChv6GRiJ5ewuo=;
        b=Km7B94yItHq7aVfP1T9NUkUg0CfyYu53x8ocQbPhc+dKDkm2Z3Qdmqq6lhxvM80Pks
         16ttYCCVWt7dbiTvfB/TJxujAvsC6cSa06GEpsKkkuaeQlcM8M+t4u99s5lARvhfxInW
         Ci1oy5mNVTaPwV+2dSBlSscKmvmZ+mg0LMkcK6MV3GSRb+XMtxMOJgcgXRxQrrOziDKZ
         Bc7zRC9XKZDw0XoE+bVrA4iEkQtZ7fVhKAaqedPN8V6l0oR6BZz+wRBmSzU31XZDthCr
         spefGhSvdjB+tbrWX7EjLUw/q7lrjUel8Kaldz+FP/57vDBGGjvW2MPQW/bngKKnr/RE
         IoZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=DSUCsXvUq5CC+YLJR6sM+UncKVzG/eChv6GRiJ5ewuo=;
        b=X4b3pTjbPjNvU6r5k0eFfOeNTQVPbKn8H1pBBKcGXqLSIvVaH+q/4ob+3Dz1FstXQr
         wtihMTJuMTA35IxpOvuX5n3HL44F8jHU03c126kszDwfzwvQuWR0h8EgbPUbafO8KozO
         hM1dvnc60/rwALs04muvvRF5l9/2NlpxM3BcMcAXmveJOH7QuiKsusagrdfZ0cTJ+pEN
         GAweSxzyBKgETi/sIfTzlaBShAUSTWknCxURwB2Bfql3NnuPaUCMK7steRIBUi14ZhU9
         pZJEAWz0F0IMCdhc9qaxMlZ7ocHBuy2qQsGtUdUscLsNFcr9rxAFIUHZFaE+OG4eSgSK
         fCMA==
X-Gm-Message-State: AOAM530LHrHrxNdybDy1pe/vX4sfm9bPb/SRsNWOFLxe6mWP3Aw51R7w
	OeJsgcOwuyTVMydYMhlAh+SUOoUugJtEytxCp7FvERj7
X-Google-Smtp-Source: ABdhPJySDowHRxGMfXN2K9VReVwH+SUfch9JrimtyE5ccTX6eX5LjL8lOKhq1C4RF1mflvPlwsqfGtTGOZn0hxrfPFg=
X-Received: by 2002:a05:6512:3e1f:: with SMTP id i31mr4004663lfv.661.1642209473081;
 Fri, 14 Jan 2022 17:17:53 -0800 (PST)
MIME-Version: 1.0
References: <CAO_48GF=ttKqSOm9GRoA3Mq+-RQOtRjWp449XPcz-wH=kjaTjw@mail.gmail.com>
 <20220113123406.11520-1-guangming.cao@mediatek.com> <4f88205c1b344aea8608960e2f85b8f4@intel.com>
 <e657f5257cbf4955817b0bbf037de9f9@intel.com> <24157767-dc29-bbdd-5428-d89ecc6b9606@amd.com>
 <CALAqxLXRtYDNQ8y1efVGa4SwUH_oAaHviZFjsOVSNFmUHnCCeQ@mail.gmail.com>
 <6b8182a1-7cdc-7369-5c34-e6d0c24efcca@amd.com> <82faa62f1bc946cf2f9ee2f7d15c567162238eab.camel@mediatek.com>
In-Reply-To: <82faa62f1bc946cf2f9ee2f7d15c567162238eab.camel@mediatek.com>
From: John Stultz <john.stultz@linaro.org>
Date: Fri, 14 Jan 2022 17:17:39 -0800
Message-ID: <CALAqxLUSjHoLpgFLcvqmDfv7Uip2VwHS5d_5x2nzw=P3rA2NDA@mail.gmail.com>
To: "Guangming.Cao" <guangming.cao@mediatek.com>
Message-ID-Hash: FAGAPWCGLCYUGW4CKHLDETVTV7RG4NS4
X-Message-ID-Hash: FAGAPWCGLCYUGW4CKHLDETVTV7RG4NS4
X-MailFrom: john.stultz@linaro.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "Ruhl, Michael J" <michael.j.ruhl@intel.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "wsd_upstream@mediatek.com" <wsd_upstream@mediatek.com>, "libo.kang@mediatek.com" <libo.kang@mediatek.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "yf.wang@mediatek.com" <yf.wang@mediatek.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "lmark@codeaurora.org" <lmark@codeaurora.org>, "benjamin.gaignard@linaro.org" <benjamin.gaignard@linaro.org>, "bo.song@mediatek.com" <bo.song@mediatek.com>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "labbott@redhat.com" <labbott@redhat.com>, "mingyuan.ma@mediatek.com" <mingyuan.ma@mediatek.com>, "jianjiao.zeng@mediatek.com" <jianjiao.zeng@mediatek.com>, "linux-media@v
 ger.kernel.org" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] dma-buf: dma-heap: Add a size check for allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FAGAPWCGLCYUGW4CKHLDETVTV7RG4NS4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBKYW4gMTQsIDIwMjIgYXQgNDowNCBBTSBHdWFuZ21pbmcuQ2FvDQo8Z3VhbmdtaW5n
LmNhb0BtZWRpYXRlay5jb20+IHdyb3RlOg0KPg0KPiBPbiBGcmksIDIwMjItMDEtMTQgYXQgMDg6
MTYgKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+ID4gQW0gMTQuMDEuMjIgdW0gMDA6
MjYgc2NocmllYiBKb2huIFN0dWx0ejoNCj4gPiA+IE9uIFRodSwgSmFuIDEzLCAyMDIyIGF0IDU6
MDUgQU0gQ2hyaXN0aWFuIEvDtm5pZw0KPiA+ID4gPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4g
d3JvdGU6DQo+ID4gPiA+IEFtIDEzLjAxLjIyIHVtIDE0OjAwIHNjaHJpZWIgUnVobCwgTWljaGFl
bCBKOg0KPiA+ID4gPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+ID4gPiA+
IEZyb206IGRyaS1kZXZlbCA8ZHJpLWRldmVsLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
PiBPbg0KPiA+ID4gPiA+ID4gQmVoYWxmIE9mDQo+ID4gPiA+ID4gPiBSdWhsLCBNaWNoYWVsIEoN
Cj4gPiA+ID4gPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+ID4gPiA+ID4g
RnJvbTogZHJpLWRldmVsIDxkcmktZGV2ZWwtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+
DQo+ID4gPiA+ID4gPiA+IE9uIEJlaGFsZiBPZg0KPiA+ID4gPiA+ID4gPiBndWFuZ21pbmcuY2Fv
QG1lZGlhdGVrLmNvbQ0KPiA+ID4gPiA+ID4gPiArICAgLyoNCj4gPiA+ID4gPiA+ID4gKyAgICAq
IEludmFsaWQgc2l6ZSBjaGVjay4gVGhlICJsZW4iIHNob3VsZCBiZSBsZXNzIHRoYW4NCj4gPiA+
ID4gPiA+ID4gdG90YWxyYW0uDQo+ID4gPiA+ID4gPiA+ICsgICAgKg0KPiA+ID4gPiA+ID4gPiAr
ICAgICogV2l0aG91dCB0aGlzIGNoZWNrLCBvbmNlIHRoZSBpbnZhbGlkIHNpemUgYWxsb2NhdGlv
bg0KPiA+ID4gPiA+ID4gPiBydW5zIG9uIGEgcHJvY2Vzcw0KPiA+ID4gPiA+ID4gPiB0aGF0DQo+
ID4gPiA+ID4gPiA+ICsgICAgKiBjYW4ndCBiZSBraWxsZWQgYnkgT09NIGZsb3coc3VjaCBhcyAi
Z3JhbGxvYyIgb24NCj4gPiA+ID4gPiA+ID4gQW5kcm9pZCBkZXZpY2VzKSwgaXQNCj4gPiA+ID4g
PiA+ID4gd2lsbA0KPiA+ID4gPiA+ID4gPiArICAgICogY2F1c2UgYSBrZXJuZWwgZXhjZXB0aW9u
LCBhbmQgdG8gbWFrZSBtYXR0ZXJzIHdvcnNlLA0KPiA+ID4gPiA+ID4gPiB3ZSBjYW4ndCBmaW5k
DQo+ID4gPiA+ID4gPiA+IHdobyBhcmUgdXNpbmcNCj4gPiA+ID4gPiA+ID4gKyAgICAqIHNvIG1h
bnkgbWVtb3J5IHdpdGggImRtYV9idWZfZGVidWdfc2hvdyIgc2luY2UgdGhlDQo+ID4gPiA+ID4g
PiA+IHJlbGV2YW50DQo+ID4gPiA+ID4gPiA+IGRtYS1idWYgaGFzbid0IGV4cG9ydGVkLg0KPiA+
ID4gPiA+ID4gPiArICAgICovDQo+ID4gPiA+ID4gPiA+ICsgICBpZiAobGVuID4+IFBBR0VfU0hJ
RlQgPiB0b3RhbHJhbV9wYWdlcygpKQ0KPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+IElmIHlvdXIg
ImhlYXAiIGlzIGZyb20gY21hLCBpcyB0aGlzIHN0aWxsIGEgdmFsaWQgY2hlY2s/DQo+ID4gPiA+
ID4NCj4gPiA+ID4gPiBBbmQgdGhpbmtpbmcgYSBiaXQgZnVydGhlciwgaWYgSSBjcmVhdGUgYSBo
ZWFwIGZyb20gc29tZXRoaW5nDQo+ID4gPiA+ID4gZWxzZSAoc2F5IGRldmljZSBtZW1vcnkpLA0K
PiA+ID4gPiA+IHlvdSB3aWxsIG5lZWQgdG8gYmUgYWJsZSB0byBmaWd1cmUgb3V0IHRoZSBtYXhp
bXVtIGFsbG93YWJsZQ0KPiA+ID4gPiA+IGNoZWNrIGZvciB0aGUgc3BlY2lmaWMNCj4gPiA+ID4g
PiBoZWFwLg0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gTWF5YmUgdGhlIGhlYXAgbmVlZHMgYSBjYWxs
YmFjayBmb3IgbWF4IHNpemU/DQo+IFllcywgSSBhZ3JlZSB3aXRoIHRoaXMgc29sdXRpb24uDQo+
IElmIGRtYS1oZWFwIGZyYW1ld29yayBzdXBwb3J0IHRoaXMgdmlhIGFkZGluZyBhIGNhbGxiYWNr
IHRvIHN1cHBvcnQgaXQsDQo+IHNlZW1zIGl0J3MgbW9yZSBjbGVhciB0aGFuIGFkZGluZyBhIGxp
bWl0YXRpb24gaW4gZG1hLWhlYXAgZnJhbWV3b3JrDQo+IHNpbmNlIGVhY2ggaGVhcCBtYXliZSBo
YXMgZGlmZmVyZW50IGxpbWl0YXRpb24uDQo+IElmIHlvdSBwcmVmZXIgYWRkaW5nIGNhbGxiYWNr
LCBJIGNhbiB1cGRhdGUgdGhpcyBwYXRjaCBhbmQgYWRkIHRvdGFscmFtDQo+IGxpbWl0YXRpb24g
dG8gc3lzdGVtIGRtYS1oZWFwLg0KDQpJZiB0aGUgbWF4IHZhbHVlIGlzIHBlci1oZWFwLCB3aHkg
bm90IGVuZm9yY2UgdGhhdCB2YWx1ZSBpbiB0aGUNCnBlci1oZWFwIGFsbG9jYXRpb24gZnVuY3Rp
b24/DQoNCk1vdmluZyB0aGUgY2hlY2sgdG8gdGhlIGhlYXAgYWxsb2MgdG8gbWUgc2VlbXMgc2lt
cGxlciB0byBtZSB0aGFuDQphZGRpbmcgY29tcGxleGl0eSB0byB0aGUgaW5mcmFzdHJ1Y3R1cmUg
dG8gYWRkIGEgaGVhcCBtYXhfc2l6ZQ0KY2FsbGJhY2suIElzIHRoZXJlIHNvbWUgb3RoZXIgdXNl
IGZvciB0aGUgY2FsbGJhY2sgdGhhdCB5b3UgZW52aXNpb24/DQoNCnRoYW5rcw0KLWpvaG4NCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
