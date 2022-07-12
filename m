Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B029F571ADE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Jul 2022 15:12:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6C84547969
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Jul 2022 13:12:09 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	by lists.linaro.org (Postfix) with ESMTPS id 5DE933F2FE
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Jul 2022 13:12:04 +0000 (UTC)
Received: by mail-ed1-f48.google.com with SMTP id w12so9311376edd.13
        for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Jul 2022 06:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4p3+nMdxXOcLWjmxhjndQqNO8ytplsp5R1Ujj58aRFY=;
        b=HWcxqHWsB9k6MSItWPcW5gG2GL9eiqoCYaloDZUuEEu38jQYrDxMM+zOwFxZwxgLwI
         bx6eD6zc8ssqmQst9WD+c7byDZapuN5BM14OCPX7U7P5rQAw4SkPoGldJpqeeDO3l0Xq
         WFvfyEkD/MDACqypgRlUFxOCsgRgT8J/sjPWg1WzR01HV2W75scn737Lo5mp1RbWFoDu
         PkM23k/5kOD324slz2kbY1MrvcE8O08OHk7/KnhJF2hS1WlT5BQL570mlnynvHy3hh9v
         5n9P4Afn6jqy8n+mOoJGrzXqnOgIWaP7TXSpDYcILnTdTPgpnPMPoljciaas9sZAYBLa
         ydQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4p3+nMdxXOcLWjmxhjndQqNO8ytplsp5R1Ujj58aRFY=;
        b=UgmIoIFLaj9WLjIWIprMvtwrSeSoS7h6mppqr+ff1tLVrVwlR+9W6izKdxg+eGgAfv
         FMRaJVet7wAaT+SphqK3g95n7zQPnIjMtAaUfHrY7cg1zUBYHBRBaGB5ZUhjDkgVSyrT
         q1ffk+Fso9xY8SWoKAXObJ9qEpZiw2/EedFDaMgbpfqFbAqZJer5ZwkunEanu/37X5r4
         OII0rLHAQbmvxLrNpylswNvvAc1drTAlMsy/DoSEozAT//f2EgMrByz56pJxEqN4wIvA
         y7LxzkzmsPFKKMutoAo2i1mr1zlQP5uguL97jDw0A+C+cLyt1lp6j252uexeHnlxb+kA
         O+Xw==
X-Gm-Message-State: AJIora+HZoaqD1e6U3tOQLCowNEG4moSgeE9Kpx3Ywlchu835avVpSrv
	U1yv1ykrvwjgRwTSFWpGhQg=
X-Google-Smtp-Source: AGRyM1v/o2kQHITVKSrypm+vpUMGwGeHYFKGaQRtIkHnbzNuqBL4jsc6AE227tObZSiqLbCliR8hxg==
X-Received: by 2002:a05:6402:4488:b0:43a:7b6e:4b04 with SMTP id er8-20020a056402448800b0043a7b6e4b04mr31783384edb.202.1657631523487;
        Tue, 12 Jul 2022 06:12:03 -0700 (PDT)
Received: from able.fritz.box (p57b0bd9f.dip0.t-ipconnect.de. [87.176.189.159])
        by smtp.gmail.com with ESMTPSA id 26-20020a170906311a00b0070e238ff66fsm3775274ejx.96.2022.07.12.06.12.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jul 2022 06:12:03 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	daniel@ffwll.ch,
	bas@basnieuwenhuizen.nl
Date: Tue, 12 Jul 2022 15:12:01 +0200
Message-Id: <20220712131201.131475-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Message-ID-Hash: IHERIDSW47ZVD7O4VY4RP3GWWKYW7DTM
X-Message-ID-Hash: IHERIDSW47ZVD7O4VY4RP3GWWKYW7DTM
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf/dma_resv_usage: update explicit sync documentation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IHERIDSW47ZVD7O4VY4RP3GWWKYW7DTM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TWFrZSBpdCBjbGVhciB0aGF0IERNQV9SRVNWX1VTQUdFX0JPT0tNQVJLIGNhbiBiZSB1c2VkIGZv
ciBleHBsaWNpdCBzeW5jZWQNCnVzZXIgc3BhY2Ugc3VibWlzc2lvbnMgYXMgd2VsbCBhbmQgZG9j
dW1lbnQgdGhlIHJ1bGVzIGFyb3VuZCBhZGRpbmcgdGhlDQpzYW1lIGZlbmNlIHdpdGggZGlmZmVy
ZW50IHVzYWdlcy4NCg0KU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPg0KLS0tDQogaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oIHwgMTYgKysr
KysrKysrKysrKy0tLQ0KIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0
aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oIGIvaW5jbHVk
ZS9saW51eC9kbWEtcmVzdi5oDQppbmRleCBjOGNjYmM5NGQ1ZDIuLjI2NGUyN2U1NmRmZiAxMDA2
NDQNCi0tLSBhL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaA0KKysrIGIvaW5jbHVkZS9saW51eC9k
bWEtcmVzdi5oDQpAQCAtNjIsNiArNjIsMTEgQEAgc3RydWN0IGRtYV9yZXN2X2xpc3Q7DQogICog
Rm9yIGV4YW1wbGUgd2hlbiBhc2tpbmcgZm9yIFdSSVRFIGZlbmNlcyB0aGVuIHRoZSBLRVJORUwg
ZmVuY2VzIGFyZSByZXR1cm5lZA0KICAqIGFzIHdlbGwuIFNpbWlsYXIgd2hlbiBhc2tlZCBmb3Ig
UkVBRCBmZW5jZXMgdGhlbiBib3RoIFdSSVRFIGFuZCBLRVJORUwNCiAgKiBmZW5jZXMgYXJlIHJl
dHVybmVkIGFzIHdlbGwuDQorICoNCisgKiBBbHJlYWR5IHVzZWQgZmVuY2VzIGNhbiBiZSBwcm9t
b3RlZCBpbiB0aGUgc2Vuc2UgdGhhdCBhIGZlbmNlIHdpdGgNCisgKiBETUFfUkVTVl9VU0FHRV9C
T09LTUFSSyBjb3VsZCBiZWNvbWUgRE1BX1JFU1ZfVVNBR0VfUkVBRCBieSBhZGRpbmcgaXQgYWdh
aW4NCisgKiB3aXRoIHRoaXMgdXNhZ2UuIEJ1dCBmZW5jZXMgY2FuIG5ldmVyIGJlIGRlZ3JhZGVk
IGluIHRoZSBzZW5zZSB0aGF0IGEgZmVuY2UNCisgKiB3aXRoIERNQV9SRVNWX1VTQUdFX1dSSVRF
IGNvdWxkIGJlY29tZSBETUFfUkVTVl9VU0FHRV9SRUFELg0KICAqLw0KIGVudW0gZG1hX3Jlc3Zf
dXNhZ2Ugew0KIAkvKioNCkBAIC05OCwxMCArMTAzLDE1IEBAIGVudW0gZG1hX3Jlc3ZfdXNhZ2Ug
ew0KIAkgKiBARE1BX1JFU1ZfVVNBR0VfQk9PS0tFRVA6IE5vIGltcGxpY2l0IHN5bmMuDQogCSAq
DQogCSAqIFRoaXMgc2hvdWxkIGJlIHVzZWQgYnkgc3VibWlzc2lvbnMgd2hpY2ggZG9uJ3Qgd2Fu
dCB0byBwYXJ0aWNpcGF0ZSBpbg0KLQkgKiBpbXBsaWNpdCBzeW5jaHJvbml6YXRpb24uDQorCSAq
IGFueSBpbXBsaWNpdCBzeW5jaHJvbml6YXRpb24uDQorCSAqDQorCSAqIFRoZSBtb3N0IGNvbW1v
biBjYXNlIGFyZSBwcmVlbXB0aW9uIGZlbmNlcywgcGFnZSB0YWJsZSB1cGRhdGVzLCBUTEINCisJ
ICogZmx1c2hlcyBhcyB3ZWxsIGFzIGV4cGxpY2l0IHN5bmNlZCB1c2VyIHN1Ym1pc3Npb25zLg0K
IAkgKg0KLQkgKiBUaGUgbW9zdCBjb21tb24gY2FzZSBhcmUgcHJlZW1wdGlvbiBmZW5jZXMgYXMg
d2VsbCBhcyBwYWdlIHRhYmxlDQotCSAqIHVwZGF0ZXMgYW5kIHRoZWlyIFRMQiBmbHVzaGVzLg0K
KwkgKiBFeHBsaWNpdCBzeW5jZWQgdXNlciB1c2VyIHN1Ym1pc3Npb25zIGNhbiBiZSBwcm9tb3Rl
ZCB0bw0KKwkgKiBETUFfUkVTVl9VU0FHRV9SRUFEIG9yIERNQV9SRVNWX1VTQUdFX1dSSVRFIGFz
IG5lZWRlZCB1c2luZw0KKwkgKiBkbWFfYnVmX2ltcG9ydF9zeW5jX2ZpbGUoKSB3aGVuIGltcGxp
Y2l0IHN5bmNocm9uaXphdGlvbiBzaG91bGQNCisJICogYmVjb21lIG5lY2Vzc2FyeSBhZnRlciBp
bml0aWFsIGFkZGluZyBvZiB0aGUgZmVuY2UuDQogCSAqLw0KIAlETUFfUkVTVl9VU0FHRV9CT09L
S0VFUA0KIH07DQotLSANCjIuMjUuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
