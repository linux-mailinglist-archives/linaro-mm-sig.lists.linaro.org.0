Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D783345D1D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Mar 2021 12:39:59 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C8FA5666F0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Mar 2021 11:39:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BDD9D666F5; Tue, 23 Mar 2021 11:39:57 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9E38B664E3;
	Tue, 23 Mar 2021 11:39:33 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9E1186196D
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Mar 2021 11:39:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 81AC9664E3; Tue, 23 Mar 2021 11:39:30 +0000 (UTC)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com
 [209.85.222.45])
 by lists.linaro.org (Postfix) with ESMTPS id 86DCD6196D
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Mar 2021 11:39:29 +0000 (UTC)
Received: by mail-ua1-f45.google.com with SMTP id r8so2671019ual.9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Mar 2021 04:39:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=jWd4Ah9+UKZUMTNKlTR6tTi9e4IEQ3A7/7UYNOEhWgk=;
 b=PFPVaHOBBTORegW5rJqhkLynzqR0cwK2xpeAJmvxzTPaWR0htbkqCuVN3qaQUPlJT3
 Oan1uFKmtA6d6fQxU5hMEWUhZLT2HxdEECoZiVTQVVOviMZxpk6c+dNYgjllL5gk9HLY
 igPGllAitSy/3R6yKLb0MZLiTBhfr+iuwE/y0twob5GWMApKgynun7TJrMQh3B1/+Z6s
 j36zfcrrhgvGdstCC/yZX0OTKM5auI+dl/8Bt5cR1tWAI5I6XWbshu+/BDv60SfFmfMy
 erWVVcW54hOWPIjCQCeRdUwIm0MrwJM9r5YixTrlpB4vStnRRVtrS5pvLVxjxHHAcom8
 MKpA==
X-Gm-Message-State: AOAM533Mvn8iMCxvzJeDwfGRlmFiFEKP2vlQMN59B+Smcs/wJtdRwTG1
 HZSpc0KLiqrLrMGrzkJqCLZ5WpsNekk5vHhgHkM=
X-Google-Smtp-Source: ABdhPJzKaAFGxeyxpFpXgX6baOVQd4rV8AdYt/v5U5rOjJZkuMeUlGuvkjXtOlp6aD/2LJ0tH21yM/B9ocGridIkhnM=
X-Received: by 2002:a9f:2d90:: with SMTP id v16mr2777321uaj.138.1616499569175; 
 Tue, 23 Mar 2021 04:39:29 -0700 (PDT)
MIME-Version: 1.0
References: <1616467572-112804-1-git-send-email-jiapeng.chong@linux.alibaba.com>
In-Reply-To: <1616467572-112804-1-git-send-email-jiapeng.chong@linux.alibaba.com>
From: Christian Gmeiner <christian.gmeiner@gmail.com>
Date: Tue, 23 Mar 2021 12:39:19 +0100
Message-ID: <CAH9NwWffN0zAYSTg-zuB=cfSbNeB-J1ddpoM_7knD+inEbTFGw@mail.gmail.com>
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 The etnaviv authors <etnaviv@lists.freedesktop.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Linaro MM SIG Mailman List <linaro-mm-sig@lists.linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>, Russell King <linux+etnaviv@armlinux.org.uk>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Subject: Re: [Linaro-mm-sig] [PATCH] drm/etnaviv: Remove redundant NULL check
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

QW0gRGkuLCAyMy4gTcOkcnogMjAyMSB1bSAwMzo0NiBVaHIgc2NocmllYiBKaWFwZW5nIENob25n
CjxqaWFwZW5nLmNob25nQGxpbnV4LmFsaWJhYmEuY29tPjoKPgo+IEZpeCB0aGUgZm9sbG93aW5n
IGNvY2NpY2hlY2sgd2FybmluZ3M6Cj4KPiAuL2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2
aXZfZ2VtX3N1Ym1pdC5jOjYyMjoyLTg6IFdBUk5JTkc6IE5VTEwKPiBjaGVjayBiZWZvcmUgc29t
ZSBmcmVlaW5nIGZ1bmN0aW9ucyBpcyBub3QgbmVlZGVkLgo+Cj4gLi9kcml2ZXJzL2dwdS9kcm0v
ZXRuYXZpdi9ldG5hdml2X2dlbV9zdWJtaXQuYzo2MTg6Mi04OiBXQVJOSU5HOiBOVUxMCj4gY2hl
Y2sgYmVmb3JlIHNvbWUgZnJlZWluZyBmdW5jdGlvbnMgaXMgbm90IG5lZWRlZC4KPgo+IC4vZHJp
dmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW1fc3VibWl0LmM6NjE2OjItODogV0FSTklO
RzogTlVMTAo+IGNoZWNrIGJlZm9yZSBzb21lIGZyZWVpbmcgZnVuY3Rpb25zIGlzIG5vdCBuZWVk
ZWQuCj4KPiBSZXBvcnRlZC1ieTogQWJhY2kgUm9ib3QgPGFiYWNpQGxpbnV4LmFsaWJhYmEuY29t
Pgo+IFNpZ25lZC1vZmYtYnk6IEppYXBlbmcgQ2hvbmcgPGppYXBlbmcuY2hvbmdAbGludXguYWxp
YmFiYS5jb20+CgpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEdtZWluZXIgPGNocmlzdGlhbi5nbWVp
bmVyQGdtYWlsLmNvbT4KCi0tIApncmVldHMKLS0KQ2hyaXN0aWFuIEdtZWluZXIsIE1TYwoKaHR0
cHM6Ly9jaHJpc3RpYW4tZ21laW5lci5pbmZvL3ByaXZhY3lwb2xpY3kKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
