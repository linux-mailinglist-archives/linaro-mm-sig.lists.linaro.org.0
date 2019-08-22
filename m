Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CE09C98D8E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Aug 2019 10:23:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0922C6186E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Aug 2019 08:23:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F188861877; Thu, 22 Aug 2019 08:23:57 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D8A8B61868;
	Thu, 22 Aug 2019 08:23:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 17AC261778
 for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Aug 2019 08:23:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F193161868; Thu, 22 Aug 2019 08:23:32 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by lists.linaro.org (Postfix) with ESMTPS id 2A91D61778
 for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Aug 2019 08:23:32 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id b16so4510107wrq.9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Aug 2019 01:23:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=mHJwv/dmEXrbQ0yLWkXi+BJ6R6ibM6vVujAbVHAGxf8=;
 b=PhgortdCqr37y4czh5PTXLOebjyBsY8pFvmuT07mL8XOCipjdMfBGxLY4C4snOuIG8
 i4ejZVRMuSnM/bQRULsj3YohCX7AmEzJOXIWScUjcyeZJUUtzJEGow4JA5BsRdS8UjIZ
 j+bf3PDi0Q5i2B3JhqMfbtK3XPd2lYIqT9BXqPfcXokVAzELeY4/PI9DGx7LjoHlWkQt
 atJKy24iG0NpafvgggaqEcI2hXc7nKEkUolJ2f009yHMk5+6Z+CN8Io2+T1Ws7+8JEM/
 GQfi3/27LnfprpJHgeUbFA0HQou3KfE9313cLnDgQ1S0c7uzoSl4P+MNOPB+lG7IuE4V
 emKQ==
X-Gm-Message-State: APjAAAWEgNhZYel9qOqBcxjd+KXUG3qpqTEdBzzWQsgSs9G4uUO4LLan
 EZDh8DoJx4TN+aHwijOf+/gf+C+m
X-Google-Smtp-Source: APXvYqxtA5/FlOVudUnT39p+G3xdnBUDJ3HdAqwO8tUek7poJGRDB0yTGr3f57tMjA0UXKHO+6FOUQ==
X-Received: by 2002:a05:6000:4d:: with SMTP id
 k13mr45696163wrx.196.1566462211182; 
 Thu, 22 Aug 2019 01:23:31 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id s192sm2324408wme.17.2019.08.22.01.23.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 01:23:30 -0700 (PDT)
To: Daniel Vetter <daniel@ffwll.ch>
References: <20190821123147.110736-1-christian.koenig@amd.com>
 <20190821123147.110736-8-christian.koenig@amd.com>
 <20190821160454.GN11147@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <c1ff88ef-0e49-fd7a-6317-de432a04ddf2@gmail.com>
Date: Thu, 22 Aug 2019 10:23:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190821160454.GN11147@phenom.ffwll.local>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 07/10] dma-buf/resv: add new fences
 container implementation
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
Reply-To: christian.koenig@amd.com
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

QW0gMjEuMDguMTkgdW0gMTg6MDQgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIFdlZCwgQXVn
IDIxLCAyMDE5IGF0IDAyOjMxOjQ0UE0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+
IFtTTklQXQo+PiArCS8qIFRyeSB0byBkcm9wIHRoZSBsYXN0IHJlZmVyZW5jZSAqLwo+PiArCWlm
ICghZG1hX2ZlbmNlX2FycmF5X3JlY3ljbGUoc3RhZ2VkKSkKPiBXaXRob3V0IGFuIHJjdSBiYXJy
aWVyIGhlcmUgeW91J3JlIG5vdCBzeW5jaW5nIHRvIG5ldyBjbGllbnRzIGF0IGFsbC4KPiBJIGRv
bid0IHRoaW5rIHRoaXMgd29ya3MsIGFuZCBJIGV4cGVjdCB0aGF0IG9uY2UgeW91J3ZlIHJlYWRk
ZWQgYWxsIHRoZQo+IGJhcnJpZXJzIGFuZCByZXRyeSBsb29wcyB3ZSdyZSBiYWNrIHRvIHNlcWxv
Y2tzLgoKVGhlIGtleSBkaWZmZXJlbmNlIGlzIHRoYXQgUkNVIHVzZXJzIG5vdyB1c2UgZG1hX2Zl
bmNlX2dldF9yY3Vfc2FmZSgpIHRvIApncmFiIGEgcmVmZXJlbmNlIHRvIHRoZSBjdXJyZW50IHNl
dCBvZiBmZW5jZXMuCgpJbiBvdGhlciB3b3JkcyB0aGUgd2hvbGUgYXJyYXkgaXMgcmVmZXJlbmNl
IGNvdW50ZWQgYW5kIFJDVSBwcm90ZWN0ZWQgCmluc3RlYWQgb2YgZWFjaCBpbmRpdmlkdWFsIGVu
dHJ5IGluIHRoZSBhcnJheS4KClRoaXMgd2F5IHlvdSBkb24ndCBuZWVkIHRoZSBzZXF1ZW5jZSBj
b3VudCBhbnkgbW9yZSBiZWNhdXNlIHlvdSBncmFiIGEgCnJlZmVyZW5jZSB0byBhbGwgb2YgdGhl
bSBhdCBvbmNlIGFuZCB0aGVuIGNhbiBiZSBzdXJlIHRoYXQgdGhleSBkb24ndCAKY2hhbmdlLgoK
UmVnYXJkcywKQ2hyaXN0aWFuLgoKPiAtRGFuaWVsCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
