Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJpqEYYQ4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:38:30 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CB268411CA3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:38:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D832B44B47
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:38:28 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	by lists.linaro.org (Postfix) with ESMTPS id DC8D23F795
	for <linaro-mm-sig@lists.linaro.org>; Tue,  3 Feb 2026 05:05:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=canonical-com.20230601.gappssmtp.com header.s=20230601 header.b=t4CcEFP2;
	spf=pass (lists.linaro.org: domain of acelan@gmail.com designates 209.85.167.51 as permitted sender) smtp.mailfrom=acelan@gmail.com;
	arc=pass ("google.com:s=arc-20240605:i=1");
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=canonical.com (policy=reject)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-59dd263bf42so5431739e87.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Feb 2026 21:05:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770095102; cv=none;
        d=google.com; s=arc-20240605;
        b=ZTTuzIcAPe5DNN2tQyWAk57IuwlmJyTlTnd05W92a0qsdCqKbYy0HAMngQbxMTqR4Y
         HREQds/W8z5URjZ7Yap/r1NsvPb2V8OXiUXKDHgx3KNqxtlSDA3MCQPtRrjeLENuJ1do
         1UTCrUUv0aNxNHRL+g/FWPnB2DN9aSVhF8LGsdcPelg+JkEpyEk+mTX8AUECX++2U/eR
         IEdM674TKYgIaDsTYySzPQo9Wjga9YDk20TzElUFM+pFdTuuVnslSQilcFOULGRj+taK
         GHozVGuBr1e5cwqrdAGcnlAvTbNRAaEdXqpDRqY/HEtowXQJtM53osqiFdMQ+xheBJmo
         H69Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=R8Uq40im68Bsn440IXZslpowd8o1+PpzUOCwvDYaiRc=;
        fh=kwOLlrfF5e4YYE8Mz0+wHseozvHzCbldZBAHbtOfN5M=;
        b=fXuwEjD3ssxJ5r0t514QgtuTieBIrx4TZfhOicDibozz6PiyUwedhFD3bN8Rxtz0ej
         DAOEAd92XbCH0BWwLe/FfBg++5d/pru/Py8UZFPd5FlwkdtdrmY5UMo3OQkFfwPrprzt
         Uf5jrKJuZUZkDjyQCF6igE9dcy81cRh8cEgt+PuP9RIkJxcxvIet7+9RMhan6BTnukJa
         13ysWMsjPEmCC7kZlzo5IQI0XoRK2tF8cbtQWciJi2dsomRQ12mW1QCR0NT+zlj/sB2l
         0mMKoeOqM83Rx+ebCz+MKwWfbqWHLV6VRZaqaJjaAxhKj4SLTs0Iqgm3R9WUSJpf6+u3
         zifg==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=canonical-com.20230601.gappssmtp.com; s=20230601; t=1770095102; x=1770699902; darn=lists.linaro.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R8Uq40im68Bsn440IXZslpowd8o1+PpzUOCwvDYaiRc=;
        b=t4CcEFP2InX0ytKfqnU1nUCEj1c1ilTgl+L12rZiiTirhvrcasYj24c6idGqYKcTO0
         UGL2Lr3iwLqLA4mM6UGdhWndp7qsOAt0k1EIQvEFHJbiRwIrEmNq0H10EUDVfxYXdh/e
         F7dwnAe4CwfH2QR0bEinWw2G8cGDBs8v+LmHCwlqCQYDkbAx6CyHt/Cu1EZjTTy6z6ZM
         9CRK20wS6F8SgwoEsegD3EoICFtdWMfoO9KYHlLGN4anKhGr1H62uap+P5MqKFApBzcw
         Hl5cIyobrWMP2u+oSZdCd+dmgTOaojR8lqZZJhcP1DYVpOzrcXqjoPh2yDyzMm3j4xRT
         vAXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770095102; x=1770699902;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=R8Uq40im68Bsn440IXZslpowd8o1+PpzUOCwvDYaiRc=;
        b=v6wudfv+TdFjthwYLrNwJzCw6jMlxysaLls5w+L8fZv1q9TzhrZTQmt1NOuXRZ7OQV
         C4S78FMlTrnqN4LaDD5f2ZcY8+Jkmw0rykteZflaLU9Xpvve6bxzLvg1n5pzmy5ddbcQ
         Ebagjsdjd1HrV2FlizK13Zdd17VdPqAVcYb7IE+1NOBe092uZXBii8ZI+pIwFAsymaL0
         WUFdFi729VlC5UWjTA2a8G4anQVUo6f2HVvmr6cx+U4823LRvOfkVohlNBb/X9aztogq
         Wv0XiTZfV7tiY5SAGxaW3OAdieX2C4SiO4oZF2AdKsgJb/uxYAD/E21CsAck263/xzu1
         MbGQ==
X-Forwarded-Encrypted: i=1; AJvYcCVLQ45AXL3Nca1ptX/P0jh0+TglPDOhUQ8wokf6EiHoa2r5gsO8LQEM+b1R+6osVaikXbaga3Wo+ZTQAEM4@lists.linaro.org
X-Gm-Message-State: AOJu0YwL3HNZCgkzt8lUgpJjKkK8ktyXpO6bWNfhwUbbMBnQfW3hz0Ct
	YuRcaLJlcTvLMqmJ8YCM+I7KxF+y3AumwRdDBdeTSNHDs3zNiluOdixkn9shWy8V+jkFzabVMwy
	eNVTZ8fHy1zzg0MWuIZ/Fq97cR6yRNM4=
X-Gm-Gg: AZuq6aIeqTuwByTO4hpUwCmk79vFKefsjTvc1tkCncOcXQBgg9+ncyof5iCaMKri0FM
	0QWwS/2+r9IftY9KTteZkAwQkaIoM3sQx+qPjckDyphSG9SXloPKXuoS6YCTIufQn14zQ/Pv9xB
	KeLcXLjyZQJ4MQGxsw4vQi7CgvhBoOV5Ll/jBw4+DjvlaJuS+ak42W/5w3A648lCpkE22PUn1FR
	GHlqwKbV2HHsRr2SCiwWaLbSSnmW7wH4t0dpgBpMHf5eNSrnlxycN0y5rWGWDKaQo6HJGVI
X-Received: by 2002:a05:6512:12c4:b0:59e:1813:76ae with SMTP id
 2adb3069b0e04-59e181378f9mr4300091e87.44.1770095101318; Mon, 02 Feb 2026
 21:05:01 -0800 (PST)
MIME-Version: 1.0
References: <20260114011917.241196-1-acelan.kao@canonical.com>
In-Reply-To: <20260114011917.241196-1-acelan.kao@canonical.com>
From: AceLan Kao <acelan.kao@canonical.com>
Date: Tue, 3 Feb 2026 13:04:49 +0800
X-Gm-Features: AZwV_Qi2T0EhTqZVBJiCZ6adKX1ZiJrDZb_bikoYUAtxh6o1wMI284ojl7lLFWc
Message-ID: <CAMz9Wg8ez3U3qbB5AbyA_8QUkEoPyejyAhyy82+xwiH8wxi1Jw@mail.gmail.com>
To: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Spamd-Bar: --
X-MailFrom: acelan@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CW5KTCEIFG2UBO5QUTQ2W6G2IJ4KRJZ7
X-Message-ID-Hash: CW5KTCEIFG2UBO5QUTQ2W6G2IJ4KRJZ7
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:36:02 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: set SB_I_NOEXEC and SB_I_NODEV on dmabuf filesystem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CW5KTCEIFG2UBO5QUTQ2W6G2IJ4KRJZ7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[canonical.com : SPF not aligned (relaxed), No valid DKIM,reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DATE_IN_PAST(1.00)[1739];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.984];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,canonical.com:email,mail.gmail.com:mid,acelan.idv.tw:url];
	FROM_NEQ_ENVFROM(0.00)[acelan.kao@canonical.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3]
X-Rspamd-Queue-Id: CB268411CA3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Q2hpYS1MaW4gS2FvIChBY2VMYW4pIDxhY2VsYW4ua2FvQGNhbm9uaWNhbC5jb20+IOaWvCAyMDI2
5bm0MeaciDE05pel6YCx5LiJIOS4iuWNiDk6MTnlr6vpgZPvvJoNCj4NCj4gVGhlIFZGUyBub3cg
d2FybnMgaWYgYW4gaW5vZGUgZmxhZ2dlZCB3aXRoIFNfQU5PTl9JTk9ERSBpcyBsb2NhdGVkIG9u
IGENCj4gZmlsZXN5c3RlbSB0aGF0IGRvZXMgbm90IGhhdmUgU0JfSV9OT0VYRUMgc2V0LiBkbWFi
dWYgaW5vZGVzIGFyZQ0KPiBjcmVhdGVkIHVzaW5nIGFsbG9jX2Fub25faW5vZGUoKSwgd2hpY2gg
c2V0cyBTX0FOT05fSU5PREUuDQo+DQo+IFRoaXMgdHJpZ2dlcnMgYSB3YXJuaW5nIGluIHBhdGhf
bm9leGVjKCkgd2hlbiBhIGRtYWJ1ZiBpcyBtbWFwcGVkLCBmb3INCj4gZXhhbXBsZSBieSBHU3Ry
ZWFtZXIncyB2NGwyc3JjIGVsZW1lbnQuDQo+DQo+IFsgICA2MC4wNjEzMjhdIFdBUk5JTkc6IENQ
VTogMiBQSUQ6IDI4MDMgYXQgZnMvZXhlYy5jOjEyNSBwYXRoX25vZXhlYysweGEwLzB4ZDANCj4g
Li4uDQo+IFsgICA2MC4wNjE2MzddICBkb19tbWFwKzB4MmI1LzB4NjgwDQo+DQo+IFRoZSB3YXJu
aW5nIHdhcyBpbnRyb2R1Y2VkIGJ5IGNvbW1pdCAxZTdhYjZmNjc4MjQgKCJhbm9uX2lub2RlOiBy
ZXdvcmsNCj4gYXNzZXJ0aW9ucyIpIHdoaWNoIGFkZGVkIGVuZm9yY2VtZW50IHRoYXQgYW5vbnlt
b3VzIGlub2RlcyBtdXN0IGJlIG9uDQo+IGZpbGVzeXN0ZW1zIHdpdGggU0JfSV9OT0VYRUMgc2V0
Lg0KPg0KPiBGaXggdGhpcyBieSBzZXR0aW5nIFNCX0lfTk9FWEVDIGFuZCBTQl9JX05PREVWIG9u
IHRoZSBkbWFidWYgZmlsZXN5c3RlbQ0KPiBjb250ZXh0LCBmb2xsb3dpbmcgdGhlIHNhbWUgcGF0
dGVybiBhcyBjb21taXQgY2U3NDE5YjZjZjIzZCAoImFub25faW5vZGU6DQo+IHJhaXNlIFNCX0lf
Tk9ERVYgYW5kIFNCX0lfTk9FWEVDIikgYW5kIGNvbW1pdCA5OGY5OTM5NGExMDRjICgic2VjcmV0
bWVtOg0KPiB1c2UgU0JfSV9OT0VYRUMiKS4NCj4NCj4gU2lnbmVkLW9mZi1ieTogQ2hpYS1MaW4g
S2FvIChBY2VMYW4pIDxhY2VsYW4ua2FvQGNhbm9uaWNhbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVy
cy9kbWEtYnVmL2RtYS1idWYuYyB8IDIgKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKykNCj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2
ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+IGluZGV4IGE0ZDhmMmZmOTRlNDYuLmRlYTc5YWFhYjEw
Y2UgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4gKysrIGIvZHJp
dmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPiBAQCAtMjIxLDYgKzIyMSw4IEBAIHN0YXRpYyBpbnQg
ZG1hX2J1Zl9mc19pbml0X2NvbnRleHQoc3RydWN0IGZzX2NvbnRleHQgKmZjKQ0KPiAgICAgICAg
IGlmICghY3R4KQ0KPiAgICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07DQo+ICAgICAgICAg
Y3R4LT5kb3BzID0gJmRtYV9idWZfZGVudHJ5X29wczsNCj4gKyAgICAgICBmYy0+c19pZmxhZ3Mg
fD0gU0JfSV9OT0VYRUM7DQo+ICsgICAgICAgZmMtPnNfaWZsYWdzIHw9IFNCX0lfTk9ERVY7DQo+
ICAgICAgICAgcmV0dXJuIDA7DQo+ICB9DQo+DQo+IC0tDQo+IDIuNTEuMA0KPg0KQSBnZW50bGUg
cGluZywgcGxlYXNlIHJldmlldyB0aGlzIHBhdGNoLCB0aGFua3MuDQoNCi0tIA0KQ2hpYS1MaW4g
S2FvKEFjZUxhbikNCmh0dHA6Ly9ibG9nLmFjZWxhbi5pZHYudHcvDQpFLU1haWw6IGFjZWxhbi5r
YW9BVGNhbm9uaWNhbC5jb20gKHMvQVQvQC8pDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
