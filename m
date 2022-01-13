Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CA79B48E0D7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Jan 2022 00:27:05 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9F87F3EDAB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Jan 2022 23:27:04 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	by lists.linaro.org (Postfix) with ESMTPS id 5A9CA3ED32
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Jan 2022 23:27:00 +0000 (UTC)
Received: by mail-lf1-f48.google.com with SMTP id m3so10877276lfu.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Jan 2022 15:27:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Br5WfYiTc37TH3IA3cWwwQvBdeV/BPdpfjqxoTbjUg8=;
        b=W5TpqtMMfX5D0g3MqtnYghqkOFySoHX8V7Y3CDIEk/QzE1qbCwAEJgPpiJrTJPckV+
         6N2Vqv9WJ3XylOrXOadOYeXgV1y464f5VNQVaG+8o2Glkx36tVcTGtTSSygXE9SjYxv1
         RnoyaBK5nCwB6EOFL7/mwCLnckkE1s60MGfxHeQCmCJhhJZOBIv+VRduC1HOrb6bkNsL
         FVwFtXFQXUD8Gx/cQQ5XhZOwds/VF/zUQ0OARSiZM0Xy9Ppb3w6T0wwLrYPxiySAyUbE
         20XLOCa+lmlXMZ8C2ul6MEW+k28ADcena2T1vx5h/MaIhRGddm0bLJivZ074kU2ydzvf
         0q+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Br5WfYiTc37TH3IA3cWwwQvBdeV/BPdpfjqxoTbjUg8=;
        b=KGiCuohwR1u/N40akvOuUoy9kEKswAJuo1qilMkBBgrCa158/Ia01oXiYzf8IrHVBH
         WwBpB7lO6fl8vLYMCgkJ16Luzlb9bR/afNDQooxlToEOpmv2Vc2BaA4bOCMog4Bl613U
         6vqVM71k10xPF7/aEnThtDiIgOHR7ibNH9y9/CN0gvLYVGrdQi3Aa19Z1Z/1mdjEsWpO
         q7lnXDD4aSeYdH53JUeEMX8O6N12NdeMDzK7odgfRTF4iY5L7jbJQfptWr/1KyNzLZKI
         HB9oO34vFxyC70FOb84asgKXroY7bFLFzl7//7Ah2BvwAUGoM/N8Y1Kb2tEJG61eFUvr
         599Q==
X-Gm-Message-State: AOAM5325LduVXg4bWQLwTW4rJ66Icb8ZFfg+sRaevNxtWOO8argSjySO
	FCs5ktNzNmmmdQJeb22End24Ucaa/MMC8nOkUjAf9FUQ
X-Google-Smtp-Source: ABdhPJxQ6vukwqgYAso2HtDl4olPJlAPhHEDkugkY9sHGK03iZx+0X4RXJF67ZQjXjdGFfz53L/S+5nppyW0SRY2Ae4=
X-Received: by 2002:a2e:9346:: with SMTP id m6mr4880056ljh.130.1642116419137;
 Thu, 13 Jan 2022 15:26:59 -0800 (PST)
MIME-Version: 1.0
References: <CAO_48GF=ttKqSOm9GRoA3Mq+-RQOtRjWp449XPcz-wH=kjaTjw@mail.gmail.com>
 <20220113123406.11520-1-guangming.cao@mediatek.com> <4f88205c1b344aea8608960e2f85b8f4@intel.com>
 <e657f5257cbf4955817b0bbf037de9f9@intel.com> <24157767-dc29-bbdd-5428-d89ecc6b9606@amd.com>
In-Reply-To: <24157767-dc29-bbdd-5428-d89ecc6b9606@amd.com>
From: John Stultz <john.stultz@linaro.org>
Date: Thu, 13 Jan 2022 15:26:47 -0800
Message-ID: <CALAqxLXRtYDNQ8y1efVGa4SwUH_oAaHviZFjsOVSNFmUHnCCeQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Message-ID-Hash: ANIWN7UM4J4AZ6EMCZOLMB62MJW5RYGT
X-Message-ID-Hash: ANIWN7UM4J4AZ6EMCZOLMB62MJW5RYGT
X-MailFrom: john.stultz@linaro.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Ruhl, Michael J" <michael.j.ruhl@intel.com>, "guangming.cao@mediatek.com" <guangming.cao@mediatek.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "wsd_upstream@mediatek.com" <wsd_upstream@mediatek.com>, "libo.kang@mediatek.com" <libo.kang@mediatek.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "yf.wang@mediatek.com" <yf.wang@mediatek.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "lmark@codeaurora.org" <lmark@codeaurora.org>, "benjamin.gaignard@linaro.org" <benjamin.gaignard@linaro.org>, "bo.song@mediatek.com" <bo.song@mediatek.com>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "labbott@redhat.com" <labbott@redhat.com>, "mingyuan.ma@mediatek.com" <mingyuan.ma@mediatek.com>, "jianjiao.zeng@mediatek.com" <jianjiao.zeng@mediatek.com>, "linux-media@vge
 r.kernel.org" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] dma-buf: dma-heap: Add a size check for allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ANIWN7UM4J4AZ6EMCZOLMB62MJW5RYGT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBKYW4gMTMsIDIwMjIgYXQgNTowNSBBTSBDaHJpc3RpYW4gS8O2bmlnDQo8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4gQW0gMTMuMDEuMjIgdW0gMTQ6MDAgc2Nocmll
YiBSdWhsLCBNaWNoYWVsIEo6DQo+ID4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4+
IEZyb206IGRyaS1kZXZlbCA8ZHJpLWRldmVsLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
PiBPbiBCZWhhbGYgT2YNCj4gPj4gUnVobCwgTWljaGFlbCBKDQo+ID4+PiAtLS0tLU9yaWdpbmFs
IE1lc3NhZ2UtLS0tLQ0KPiA+Pj4gRnJvbTogZHJpLWRldmVsIDxkcmktZGV2ZWwtYm91bmNlc0Bs
aXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZg0KPiA+Pj4gZ3VhbmdtaW5nLmNhb0Bt
ZWRpYXRlay5jb20NCj4gPj4+ICsgICAvKg0KPiA+Pj4gKyAgICAqIEludmFsaWQgc2l6ZSBjaGVj
ay4gVGhlICJsZW4iIHNob3VsZCBiZSBsZXNzIHRoYW4gdG90YWxyYW0uDQo+ID4+PiArICAgICoN
Cj4gPj4+ICsgICAgKiBXaXRob3V0IHRoaXMgY2hlY2ssIG9uY2UgdGhlIGludmFsaWQgc2l6ZSBh
bGxvY2F0aW9uIHJ1bnMgb24gYSBwcm9jZXNzDQo+ID4+PiB0aGF0DQo+ID4+PiArICAgICogY2Fu
J3QgYmUga2lsbGVkIGJ5IE9PTSBmbG93KHN1Y2ggYXMgImdyYWxsb2MiIG9uIEFuZHJvaWQgZGV2
aWNlcyksIGl0DQo+ID4+PiB3aWxsDQo+ID4+PiArICAgICogY2F1c2UgYSBrZXJuZWwgZXhjZXB0
aW9uLCBhbmQgdG8gbWFrZSBtYXR0ZXJzIHdvcnNlLCB3ZSBjYW4ndCBmaW5kDQo+ID4+PiB3aG8g
YXJlIHVzaW5nDQo+ID4+PiArICAgICogc28gbWFueSBtZW1vcnkgd2l0aCAiZG1hX2J1Zl9kZWJ1
Z19zaG93IiBzaW5jZSB0aGUgcmVsZXZhbnQNCj4gPj4+IGRtYS1idWYgaGFzbid0IGV4cG9ydGVk
Lg0KPiA+Pj4gKyAgICAqLw0KPiA+Pj4gKyAgIGlmIChsZW4gPj4gUEFHRV9TSElGVCA+IHRvdGFs
cmFtX3BhZ2VzKCkpDQo+ID4+IElmIHlvdXIgImhlYXAiIGlzIGZyb20gY21hLCBpcyB0aGlzIHN0
aWxsIGEgdmFsaWQgY2hlY2s/DQo+ID4gQW5kIHRoaW5raW5nIGEgYml0IGZ1cnRoZXIsIGlmIEkg
Y3JlYXRlIGEgaGVhcCBmcm9tIHNvbWV0aGluZyBlbHNlIChzYXkgZGV2aWNlIG1lbW9yeSksDQo+
ID4geW91IHdpbGwgbmVlZCB0byBiZSBhYmxlIHRvIGZpZ3VyZSBvdXQgdGhlIG1heGltdW0gYWxs
b3dhYmxlIGNoZWNrIGZvciB0aGUgc3BlY2lmaWMNCj4gPiBoZWFwLg0KPiA+DQo+ID4gTWF5YmUg
dGhlIGhlYXAgbmVlZHMgYSBjYWxsYmFjayBmb3IgbWF4IHNpemU/DQo+DQo+IFdlbGwgd2UgY3Vy
cmVudGx5IG1haW50YWluIGEgc2VwYXJhdGUgYWxsb2NhdG9yIGFuZCBkb24ndCB1c2UgZG1hLWhl
YXAsDQo+IGJ1dCB5ZXMgd2UgaGF2ZSBzeXN0ZW1zIHdpdGggMTZHaUIgZGV2aWNlIGFuZCBvbmx5
IDhHaUIgc3lzdGVtIG1lbW9yeSBzbw0KPiB0aGF0IGNoZWNrIGhlcmUgaXMgY2VydGFpbmx5IG5v
dCBjb3JyZWN0Lg0KDQpHb29kIHBvaW50Lg0KDQo+IEluIGdlbmVyYWwgSSB3b3VsZCByYXRoZXIg
bGV0IHRoZSBzeXN0ZW0gcnVuIGludG8gLUVOT01FTSBvciAtRUlOVkFMDQo+IGZyb20gdGhlIGFs
bG9jYXRvciBpbnN0ZWFkLg0KDQpQcm9iYWJseSB0aGUgc2ltcGxlciBzb2x1dGlvbiBpcyB0byBw
dXNoIHRoZSBhbGxvY2F0aW9uIGNoZWNrIHRvIHRoZQ0KaGVhcCBkcml2ZXIsIHJhdGhlciB0aGFu
IGRvaW5nIGl0IGF0IHRoZSB0b3AgbGV2ZWwgaGVyZS4NCg0KRm9yIENNQSBvciBvdGhlciBjb250
aWd1b3VzIGhlYXBzLCBsZXR0aW5nIHRoZSBhbGxvY2F0b3IgZmFpbCBpcyBmYXN0DQplbm91Z2gu
IEZvciBub25jb250aWd1b3VzIGJ1ZmZlcnMsIGxpa2UgdGhlIHN5c3RlbSBoZWFwLCB0aGUNCmFs
bG9jYXRpb24gY2FuIGJ1cm4gYSBsb3Qgb2YgdGltZSBhbmQgY29uc3VtZSBhIGxvdCBvZiBtZW1v
cnkgKGNhdXNpbmcNCm90aGVyIHRyb3VibGUpIGJlZm9yZSBhIGxhcmdlIGFsbG9jYXRpb24gbWln
aHQgbmF0dXJhbGx5IGZhaWwuDQoNCnRoYW5rcw0KLWpvaG4NCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
