Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BD57258F188
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 19:26:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A8D8047991
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 17:26:22 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	by lists.linaro.org (Postfix) with ESMTPS id DD2DA3F456
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Aug 2022 17:26:19 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id z17so18510196wrq.4
        for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Aug 2022 10:26:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=yQkBkfOo8k25QBF8/V+qz53CEBZNBWR8yDZ22JLO334=;
        b=ajme8M6DMtkn8m436NlSix04pj43UCxqMSspZK63up3TGZkGt9Sw0o3097zhbTjBRf
         gTSBjnMb/JbBgWUWWq96D+C4r92pk4YuhXDgQfj+TcMmKSWyIgqn5ZF4IclOOMrGOaJV
         6/nlo7UUXoyAXGjs3gsRPt264hxTa/+wljRDLqkq9i5wlk4jgZvafCK6re81odgd9xsB
         eLffJMbyKn7a+zlYY84aOoWr8pw0pJolC6Fi5JzLsCasjeIUJ8Hu1pHMrR9cStd7DIEO
         JAF46SrwCfO2ua04wgZmbB9NziqVNQ7p4Unm/PyqMV+W//SZGbsmklmbAUK1PFemuVZU
         1MnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=yQkBkfOo8k25QBF8/V+qz53CEBZNBWR8yDZ22JLO334=;
        b=k1Q61KRhNDoKqSPNovBhL/aXSPBPFRU3MESxKN7hHjucXapnMWzFdpZQt4zfI6IVXK
         AJel489MgbTS8fVEJRsT/0UMFHHpX/pQd8HvwaG6NjRTVg84fuaTvxflqg3kmpigzQ7M
         IZstoZvl+WCTSuZpbu063yUP+XSoolrWZlcgRtRFokyZziHZ5NUSAbbaxIvQwm7YHwvq
         YvnUs61uno9YI5XVQRaEv2dW9TMC+2+i/P6HjeTjMtMS8T38A4yz8zpE7X0u6xy0jkNi
         Z5+z93IpQda2eKNCJiBqPU1u5mLR2pRNZZsQkGhWFRoSiQLTv80ivzAjckAHZFmKYRg4
         23RQ==
X-Gm-Message-State: ACgBeo0J+CD5MXqYOxdQ2EsbAxTzGi12gfr0KkF+seu3w4r2S68ldX6O
	OUrpMAV9NtbbCUiBptGJNf0=
X-Google-Smtp-Source: AA6agR6Gv7kU22Dkze4nmrfvh1iRJdomSy/KJlH8y5Eoa7g41RhDBbSLi0JH3hLVHxzak0zw7kA/uw==
X-Received: by 2002:a5d:4907:0:b0:21f:bc42:989 with SMTP id x7-20020a5d4907000000b0021fbc420989mr17948544wrq.375.1660152378994;
        Wed, 10 Aug 2022 10:26:18 -0700 (PDT)
Received: from able.fritz.box (p57b0bd9f.dip0.t-ipconnect.de. [87.176.189.159])
        by smtp.gmail.com with ESMTPSA id 17-20020a05600c26d100b003a2f2bb72d5sm3561059wmv.45.2022.08.10.10.26.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Aug 2022 10:26:18 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: jason@jlekstrand.net,
	daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Wed, 10 Aug 2022 19:26:17 +0200
Message-Id: <20220810172617.140047-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Message-ID-Hash: JVI5FTLEF6VZGNAO4VYPMXUJ3NHWOIIU
X-Message-ID-Hash: JVI5FTLEF6VZGNAO4VYPMXUJ3NHWOIIU
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf/dma-resv: check if the new fence is really later
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JVI5FTLEF6VZGNAO4VYPMXUJ3NHWOIIU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UHJldmlvdXNseSB3aGVuIHdlIGFkZGVkIGEgZmVuY2UgdG8gYSBkbWFfcmVzdiBvYmplY3Qgd2Ug
YWx3YXlzDQphc3N1bWVkIHRoZSB0aGUgbmV3ZXIgdGhhbiBhbGwgdGhlIGV4aXN0aW5nIGZlbmNl
cy4NCg0KV2l0aCBKYXNvbidzIHdvcmsgdG8gYWRkIGFuIFVBUEkgdG8gZXhwbGljaXQgZXhwb3J0
L2ltcG9ydCB0aGF0J3Mgbm90DQpuZWNlc3NhcnkgdGhlIGNhc2UgYW55IG1vcmUuIFNvIHdpdGhv
dXQgdGhpcyBjaGVjayB3ZSB3b3VsZCBhbGxvdw0KdXNlcnNwYWNlIHRvIGZvcmNlIHRoZSBrZXJu
ZWwgaW50byBhbiB1c2UgYWZ0ZXIgZnJlZSBlcnJvci4NCg0KU2luY2UgdGhlIGNoYW5nZSBpcyB2
ZXJ5IHNtYWxsIGFuZCBkZWZlbnNpdmUgaXQncyBwcm9iYWJseSBhIGdvb2QNCmlkZWEgdG8gYmFj
a3BvcnQgdGhpcyB0byBzdGFibGUga2VybmVscyBhcyB3ZWxsIGp1c3QgaW4gY2FzZSBvdGhlcnMN
CmFyZSB1c2luZyB0aGUgZG1hX3Jlc3Ygb2JqZWN0IGluIHRoZSBzYW1lIHdheS4NCg0KU2lnbmVk
LW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KLS0t
DQogZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgfCAzICsrLQ0KIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtcmVzdi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMNCmluZGV4IDIwNWFj
YjJjNzQ0ZC4uZTM4ODVjOTBhM2FjIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1y
ZXN2LmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jDQpAQCAtMjk1LDcgKzI5NSw4
IEBAIHZvaWQgZG1hX3Jlc3ZfYWRkX2ZlbmNlKHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmZW5jZSwNCiAJCWVudW0gZG1hX3Jlc3ZfdXNhZ2Ugb2xkX3VzYWdlOw0KIA0K
IAkJZG1hX3Jlc3ZfbGlzdF9lbnRyeShmb2JqLCBpLCBvYmosICZvbGQsICZvbGRfdXNhZ2UpOw0K
LQkJaWYgKChvbGQtPmNvbnRleHQgPT0gZmVuY2UtPmNvbnRleHQgJiYgb2xkX3VzYWdlID49IHVz
YWdlKSB8fA0KKwkJaWYgKChvbGQtPmNvbnRleHQgPT0gZmVuY2UtPmNvbnRleHQgJiYgb2xkX3Vz
YWdlID49IHVzYWdlICYmDQorCQkgICAgIGRtYV9mZW5jZV9pc19sYXRlcihmZW5jZSwgb2xkKSkg
fHwNCiAJCSAgICBkbWFfZmVuY2VfaXNfc2lnbmFsZWQob2xkKSkgew0KIAkJCWRtYV9yZXN2X2xp
c3Rfc2V0KGZvYmosIGksIGZlbmNlLCB1c2FnZSk7DQogCQkJZG1hX2ZlbmNlX3B1dChvbGQpOw0K
LS0gDQoyLjI1LjENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
