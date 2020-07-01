Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 594F4210B19
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jul 2020 14:34:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 83C576658C
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jul 2020 12:34:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 780B766588; Wed,  1 Jul 2020 12:34:13 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C6FF366561;
	Wed,  1 Jul 2020 12:33:42 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9946A66539
 for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Jul 2020 12:33:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8B51666561; Wed,  1 Jul 2020 12:33:40 +0000 (UTC)
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by lists.linaro.org (Postfix) with ESMTPS id 7A63F66539
 for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Jul 2020 12:33:39 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id 95so10612216otw.10
 for <linaro-mm-sig@lists.linaro.org>; Wed, 01 Jul 2020 05:33:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=0/gKTgSPNiK1GV7dg8cAvLDkoEQTeqakLc9QEbntdl8=;
 b=rpE69G3TJexazB1EWQN3NewKRED+R2El8mSiSsOIL5wZMUtqwJE1YgWrrUDdrwHNZ2
 RRUZELrNR3vxLsle8FwmLDE5fPSzFVhayxiExQu+yiP269Z/aL+f7NFPFEA0KfVmgtL8
 1qVEDbLt8vcjXm1dpogLkif11l/wYDVLnpl01t5G36nfNZuk04Kw5CTs5lTwzX6YY40w
 +nuvJwr6wWPyk3bZiCAB/bMmeCBRiomo9d0wLtYoSq1oIKVh6CBbK6du3QTx8VRIb+3T
 xyVellKHyRCzIMOpYTqdbvsf9DWBmFFwHu2YSaRopJ6uON3zs2TXaAQBZzgkvBmVndfo
 AerQ==
X-Gm-Message-State: AOAM533BLIZxd1RKbd2Dnmc4aLoolA3AUR9OrZWtCF7P2jJzqphAMjnb
 ocmukDWvSSEwdZBc70qrW7E+ePXwK0qN9aLiuj7bEWS9
X-Google-Smtp-Source: ABdhPJx/rWPPNwXFCHG8PvPxNDYMqAHV8vIuxP4r0bLP3udJYhyRjrkyu0A1QaxqcR0enaXl2VCUcwVxaN76M1jvyJI=
X-Received: by 2002:a05:6830:2405:: with SMTP id
 j5mr22837641ots.371.1593606818955; 
 Wed, 01 Jul 2020 05:33:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200701112559.22669-1-christian.koenig@amd.com>
 <CAKMK7uHqNaQPwATQf=Jfs6oQ=YEemHSHTEtC2=VqvNf+bMh_sQ@mail.gmail.com>
In-Reply-To: <CAKMK7uHqNaQPwATQf=Jfs6oQ=YEemHSHTEtC2=VqvNf+bMh_sQ@mail.gmail.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Wed, 1 Jul 2020 18:03:27 +0530
Message-ID: <CAO_48GGh2zir-hszCv4Mp36REEKPwhcOmwj93kF5otFmkf8cOw@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] MAINTAINERS: Add myself as DMA-buf
	maintainer
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

VGhhbmtzIGZvciBhbGwgdGhlIGdvb2Qgd29yayBoZXJlLCBDaHJpc3RpYW4hCgpPbiBXZWQsIDEg
SnVsIDIwMjAgYXQgMTc6MjAsIERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4gd3JvdGU6
Cj4KPiBPbiBXZWQsIEp1bCAxLCAyMDIwIGF0IDE6MjYgUE0gQ2hyaXN0aWFuIEvDtm5pZwo+IDxj
a29lbmlnLmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPgo+ID4gQXMgZGlzY3Vz
c2VkIG9uIHRoZSBsaXN0Lgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcg
PGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPgo+IEFja2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxk
YW5pZWwudmV0dGVyQGZmd2xsLmNoPgpBY2tlZC1ieTogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13
YWxAbGluYXJvLm9yZz4KPiA+IC0tLQo+ID4gIE1BSU5UQUlORVJTIHwgMSArCj4gPiAgMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gPgo+ID4gZGlmZiAtLWdpdCBhL01BSU5UQUlORVJT
IGIvTUFJTlRBSU5FUlMKPiA+IGluZGV4IDQwNDc0OTgyYTIxZC4uNWQ3MTMwZjhkMzQyIDEwMDY0
NAo+ID4gLS0tIGEvTUFJTlRBSU5FUlMKPiA+ICsrKyBiL01BSU5UQUlORVJTCj4gPiBAQCAtNTA4
OSw2ICs1MDg5LDcgQEAgRjogICAgICAgIGZzL2RsbS8KPiA+Cj4gPiAgRE1BIEJVRkZFUiBTSEFS
SU5HIEZSQU1FV09SSwo+ID4gIE06ICAgICBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5h
cm8ub3JnPgo+ID4gK006ICAgICBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+Cj4gPiAgTDogICAgIGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwo+ID4gIEw6ICAg
ICBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiAgTDogICAgIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZyAobW9kZXJhdGVkIGZvciBub24tc3Vic2NyaWJlcnMpCj4gPiAt
LQo+ID4gMi4yMC4xCj4gPgo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiA+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiA+IGRyaS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vZHJpLWRldmVsCj4KPgo+Cj4gLS0KPiBEYW5pZWwgVmV0dGVyCj4gU29mdHdh
cmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCj4gaHR0cDovL2Jsb2cuZmZ3bGwuY2gKCgpC
ZXN0LApTdW1pdApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNp
Zwo=
