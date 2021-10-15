Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4789A42F18E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 Oct 2021 14:57:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0170362079
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 Oct 2021 12:57:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AECB26242C; Fri, 15 Oct 2021 12:57:10 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6ADF561945;
	Fri, 15 Oct 2021 12:57:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 394E5617B3
 for <linaro-mm-sig@lists.linaro.org>; Fri, 15 Oct 2021 12:57:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2BF1A61945; Fri, 15 Oct 2021 12:57:05 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by lists.linaro.org (Postfix) with ESMTPS id 21C31617B3
 for <linaro-mm-sig@lists.linaro.org>; Fri, 15 Oct 2021 12:57:03 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id r7so26390400wrc.10
 for <linaro-mm-sig@lists.linaro.org>; Fri, 15 Oct 2021 05:57:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=K7gsPVJQCeXWBCpGF1GEldNyINPbSWQ/6+B1Ys661c0=;
 b=OQSqAFiO1RiBCo88BhlVSFgFriYtTV8A8ce2Y/2Qi4T2reSk69E8oMuIdy2aRraIoG
 ZeBtE3v4/0DXAQ6wMRifwwM1usHHRD9DcqG3nmq7ffyQpX5eCXZcj+8yHYzv7r9aSwok
 69VXp2VyL5TiT6VILFZfy7lZ63MtE8yQK8CdKI0ksf8CWgWLRk9I/s5jh+GMJFP0DYrm
 xxSb/xaJqB9rXDC3kObrNN9xZezArb34+l4DB51VJbMvlNBABGTIsA9wked1Yb6TjYaf
 yjpdntpvp1y2nPMPn/zX4mqIalekeT6rqeFL2NaBCCJySioU3l2OUClL/zAxPYtTU6Jz
 Hb7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=K7gsPVJQCeXWBCpGF1GEldNyINPbSWQ/6+B1Ys661c0=;
 b=Uy19MMdk5HBtYlJfuJDwz2UGg2VO3KnYFKz0gcYDPq8n2WaoJKtNFEJaVw5TloKfZ3
 cuETdOBCi2vGpCCBIuvXPpAooHzr0zNI4Y+OyEDGfecGdwwL5mrZ2vpnFR0amhp5bo+O
 jlHM3SxVZ6V39KudhNm6P9px62Qe6NbTsLye3tvQ7VbjUl4sBdthnU6oiryT5CzO7J0N
 6y38hqdT5APwG8dHcxUM9Qp5/Lb5W8Ym/Lyh19eXWeOXds7T8YEhJJPl5bEwcP0nAFYK
 3BCue0m//yurOqOCqWE+u4LuBbY86/UNTJajOgF/fYQPGD0rVSQ2GcZ5TMECSgIO9Qnk
 lSpQ==
X-Gm-Message-State: AOAM533FwtUFAi4iPQIxCBtpzWfZSpfG6Y43OqmpFx+ADqa2jrSJihYH
 wczrH7WoBnyI5gHwW03Qphc=
X-Google-Smtp-Source: ABdhPJwgXwn4QWqlTUa6s1tP3zFbUDUMWqnUk/1eYpk4nau0DzaixRIZbgKH9ZBimALoiJg5ZK+kWg==
X-Received: by 2002:a5d:59ae:: with SMTP id p14mr14312983wrr.76.1634302622203; 
 Fri, 15 Oct 2021 05:57:02 -0700 (PDT)
Received: from ?IPv6:2a02:8109:333f:edd8:ffec:a915:d03e:f264?
 ([2a02:8109:333f:edd8:ffec:a915:d03e:f264])
 by smtp.gmail.com with ESMTPSA id w5sm4767366wra.87.2021.10.15.05.57.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 15 Oct 2021 05:57:01 -0700 (PDT)
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 dri-devel@lists.freedesktop.org
References: <20211015115720.79958-1-maarten.lankhorst@linux.intel.com>
 <20211015115720.79958-3-maarten.lankhorst@linux.intel.com>
 <ebf0714c-2f49-a0ad-1861-16394ade468d@amd.com>
 <9b7e43bb-e175-0aff-2cc1-cc10236fe8e5@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <06fa85f5-3664-4da4-bde8-6d7d2f199251@gmail.com>
Date: Fri, 15 Oct 2021 14:56:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <9b7e43bb-e175-0aff-2cc1-cc10236fe8e5@linux.intel.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 2/2] dma-buf: Fix dma_resv_test_signaled.
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
Cc: linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

CgpBbSAxNS4xMC4yMSB1bSAxNDo1MiBzY2hyaWViIE1hYXJ0ZW4gTGFua2hvcnN0Ogo+IE9wIDE1
LTEwLTIwMjEgb20gMTQ6MDcgc2NocmVlZiBDaHJpc3RpYW4gS8O2bmlnOgo+PiBBbSAxNS4xMC4y
MSB1bSAxMzo1NyBzY2hyaWViIE1hYXJ0ZW4gTGFua2hvcnN0Ogo+Pj4gQ29tbWl0IDdmYTgyOGNi
OTI2NSAoImRtYS1idWY6IHVzZSBuZXcgaXRlcmF0b3IgaW4gZG1hX3Jlc3ZfdGVzdF9zaWduYWxl
ZCIpCj4+PiBhY2NpZGVudGFsbHkgZm9yZ290IHRvIHRlc3Qgd2hldGhlciB0aGUgZG1hLWJ1ZiBp
cyBhY3R1YWxseSBzaWduYWxlZCwgYnJlYWtpbmcKPj4+IHByZXR0eSBtdWNoIGV2ZXJ5dGhpbmcg
ZGVwZW5kaW5nIG9uIGl0Lgo+PiBOQUssIHRoZSBkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxv
Y2tlZCgpIHJldHVybnMgb25seSB1bnNpZ25hbGVkIGZlbmNlcy4gU28gdGhlIGNvZGUgaXMgY29y
cmVjdCBhcyBpdCBpcy4KPiBUaGF0IHNlZW1zIGxpa2UgaXQgbWlnaHQgY2F1c2Ugc29tZSB1bmV4
cGVjdGVkIGJlaGF2aW9yIHdoZW4gdGhhdCBmdW5jdGlvbiBpcyBjYWxsZWQgd2l0aCBvbmUgb2Yg
dGhlIGZlbmNlIGxvY2tzIGhlbGQsIGlmIGl0IGNhbGxzIGRtYV9mZW5jZV9zaWduYWwoKS4KPgo+
IENvdWxkIGl0IGJlIGNoYW5nZWQgdG8gb25seSB0ZXN0IHRoZSBzaWduYWxlZCBiaXQsIGluIHdo
aWNoIGNhc2UgdGhpcyBwYXRjaCB3b3VsZCBzdGlsbCBiZSB1c2VmdWw/CgpUaGF0J3MgZXhhY3Rs
eSB3aGF0IEkgc3VnZ2VzdGVkIGFzIHdlbGwsIGJ1dCBEYW5pZWwgd2FzIGFnYWluc3QgdGhhdCAK
YmVjYXVzZSBvZiBjb25jZXJucyBhcm91bmQgYmFycmllcnMuCgo+IE9yIGF0IGxlYXN0IGFkZCBz
b21lIGxvY2tkZXAgYW5ub3RhdGlvbnMsIHRoYXQgZmVuY2UtPmxvY2sgbWlnaHQgYmUgdGFrZW4u
IFNvIGFueSBoYW5ncyB3b3VsZCBhdCBsZWFzdCBiZSBlYXN5IHRvIHNwb3Qgd2l0aCBsb2NrZGVw
LgoKVGhhdCBzaG91bGQgYmUgdHJpdmlhbCBkb2FibGUuCgpDaHJpc3RpYW4uCgo+Cj4gfk1hYXJ0
ZW4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKPiBMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKPiBodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0t
c2lnCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0
cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
