Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2KFjLOA1l2k/vwIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Feb 2026 17:10:08 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 431931608BA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Feb 2026 17:10:08 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5575D3FDB1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Feb 2026 16:10:07 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	by lists.linaro.org (Postfix) with ESMTPS id 81EA0401F7
	for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Feb 2026 16:08:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=T26oSFan;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.221.41 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-436234ef0f0so782232f8f.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Feb 2026 08:08:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771517312; x=1772122112; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2mFP16bmgZwjg48X3wc2fLqGCWxd1xtWsGx4Bz/HNX0=;
        b=T26oSFanm36BAUToJQ6iPiHzRGX0IYtUyKhTmCr7TDgjsiSmQ93GTFok69IAwxGIyO
         2QwB0JpE7hN+T3W428paH3A+dyq+REZbArfK0E1V4Ws3twFeBlv0o9z8dK/jnMAzh/rm
         Xdncb6x6jQSKzV8+b0cLrq+V7q4fSaS4kuPlEGbNTSsNGIXwdfBEcAluWF1g1FXS0m72
         +Y9Cu2Yrlkjre8L2Pygjb+0a1JwBfbpLU+EDsL3rgMOK6Y/GBld4C0U3kWok4ef6O0rb
         bpOxbJl4zavAyMZNdRkebpqogywRdHkxoWpPcwO4oGg00DbbW/qMe3ckezCeKlLgHo9w
         LbKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771517312; x=1772122112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2mFP16bmgZwjg48X3wc2fLqGCWxd1xtWsGx4Bz/HNX0=;
        b=BUST3sRGM6rjhXP/dbHl3mmXMN+LThkFXINK2vj5dctb/Td5ZewVM/cEJQcHvlZ6RL
         D2FahzicwDt74sMZYZrdIxHOyNvCtZ37qcztnk6Uyvfwxn/VzeEJwT2AZ3DEKbx1Lvsv
         ar7jbbAWo3mqxDZ7vkvWp8+YDuBDsxfTnSt/0voOCXxlT0EAqIt8qf4BV0Ok27888l9h
         lay0xG8lMGrViptZgaPTS3ZvAQqhyL3qUc29rcembarqDwrh/AoR9kB7HgLIMcQPeqe/
         kMAEabirfZaOmjj+whu/Z+rxgqI3LKk0L1nOsBRXRprz2yksWgtXv9n6qYc61eyGTPKF
         Ph9w==
X-Forwarded-Encrypted: i=1; AJvYcCVwn4AdFjAo2a1dbt/VHRTWZ9u6GkbPzWDQFnKklfwSwq4KlRDPB42n1WmfnIdorFYyOY871yVoxwimegfi@lists.linaro.org
X-Gm-Message-State: AOJu0Yyu3OhHx0ZCpI22raudoUUHZZsMjjfJJC8Kx7z5psEKa2bY+yMX
	1kJ21Y29U0G4OtwugVjk8uk899LrG0AvC6jSmevnzDzN+32Jk4KY0Ouk
X-Gm-Gg: AZuq6aK6iCz9+mUKmvPOYwr3Ygo9i6RBSmceKbLaLVVVdKTB/JXzvlqdJisv5CWbw86
	NKmeQr0qaVbDE6cM+j0Kl3GChTA943JIjFsgixnbdqpI2eZEu/E0d7GD0c0Nwb9xbzWOVVnezxV
	3G1T/XLaIlGUeWjuHIjytEWsn4fUNhe3XlrERWDOKrA/qmf8YKUFV3JBXoPRP4CyN76YZSNjPgp
	+gyGDqUNNr8L2TYBT2PWNFCmwArUmfNv6nWdlgh7sWtqhhQqpytvXWEJY1bukxBrLlYIPVN9inO
	Yntc19hU386wiqvyg6Q4kdZytdJ8P0yQFT7quj+TkGslpp3fHlytor/erbmDcgkKZLggqWOG1Eg
	Kg77MdsEJ55i0l19xW9zotr2rhvTvFNYQk1BlaGKVp74A8LGQrsC/E2QrT/gjYl7LctYCBSkT62
	vIGnhWso3qSErJjpcAvMUoufCvRxXBDzVp70p1
X-Received: by 2002:a05:6000:2f83:b0:437:9ccf:6b20 with SMTP id ffacd0b85a97d-4395fd693ffmr5429509f8f.55.1771517312356;
        Thu, 19 Feb 2026 08:08:32 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:1503:b900:9c42:5977:662a:d02d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796ac82f7sm54580031f8f.28.2026.02.19.08.08.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 08:08:32 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Thu, 19 Feb 2026 17:07:11 +0100
Message-ID: <20260219160822.1529-9-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260219160822.1529-1-christian.koenig@amd.com>
References: <20260219160822.1529-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Spamd-Bar: ----
Message-ID-Hash: VLHWHWDNQQBITTPXV75CYIFFFFI547XN
X-Message-ID-Hash: VLHWHWDNQQBITTPXV75CYIFFFFI547XN
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 8/8] dma-buf: use inline lock for the dma-fence-chain
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VLHWHWDNQQBITTPXV75CYIFFFFI547XN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20230601];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ckoenigleichtzumerken@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,amd.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,igalia.com:email,collabora.com:email]
X-Rspamd-Queue-Id: 431931608BA
X-Rspamd-Action: no action

VXNpbmcgdGhlIGlubGluZSBsb2NrIGlzIG5vdyB0aGUgcmVjb21tZW5kZWQgd2F5IGZvciBkbWFf
ZmVuY2UNCmltcGxlbWVudGF0aW9ucy4NCg0KU28gdXNlIHRoaXMgYXBwcm9hY2ggZm9yIHRoZSBm
cmFtZXdvcmsncyBpbnRlcm5hbCBmZW5jZXMgYXMgd2VsbC4NCg0KQWxzbyBzYXZlcyBhYm91dCA0
IGJ5dGVzIGZvciB0aGUgZXh0ZXJuYWwgc3BpbmxvY2suDQoNClNpZ25lZC1vZmYtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NClJldmlld2VkLWJ5OiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaWdhbGlhLmNvbT4NClJldmlld2VkLWJ5OiBQaGls
aXBwIFN0YW5uZXIgPHBoYXN0YUBrZXJuZWwub3JnPg0KUmV2aWV3ZWQtYnk6IEJvcmlzIEJyZXpp
bGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+DQotLS0NCiBkcml2ZXJzL2RtYS1i
dWYvZG1hLWZlbmNlLWNoYWluLmMgfCAzICstLQ0KIGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLWNo
YWluLmggICB8IDEgLQ0KIDIgZmlsZXMgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDMgZGVsZXRp
b25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWluLmMg
Yi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWluLmMNCmluZGV4IGE4YTkwYWNmNGYzNC4u
YTcwNzc5MmI2MDI1IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFp
bi5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWluLmMNCkBAIC0yNDUsNyAr
MjQ1LDYgQEAgdm9pZCBkbWFfZmVuY2VfY2hhaW5faW5pdChzdHJ1Y3QgZG1hX2ZlbmNlX2NoYWlu
ICpjaGFpbiwNCiAJc3RydWN0IGRtYV9mZW5jZV9jaGFpbiAqcHJldl9jaGFpbiA9IHRvX2RtYV9m
ZW5jZV9jaGFpbihwcmV2KTsNCiAJdWludDY0X3QgY29udGV4dDsNCiANCi0Jc3Bpbl9sb2NrX2lu
aXQoJmNoYWluLT5sb2NrKTsNCiAJcmN1X2Fzc2lnbl9wb2ludGVyKGNoYWluLT5wcmV2LCBwcmV2
KTsNCiAJY2hhaW4tPmZlbmNlID0gZmVuY2U7DQogCWNoYWluLT5wcmV2X3NlcW5vID0gMDsNCkBA
IC0yNjEsNyArMjYwLDcgQEAgdm9pZCBkbWFfZmVuY2VfY2hhaW5faW5pdChzdHJ1Y3QgZG1hX2Zl
bmNlX2NoYWluICpjaGFpbiwNCiAJCQlzZXFubyA9IG1heChwcmV2LT5zZXFubywgc2Vxbm8pOw0K
IAl9DQogDQotCWRtYV9mZW5jZV9pbml0NjQoJmNoYWluLT5iYXNlLCAmZG1hX2ZlbmNlX2NoYWlu
X29wcywgJmNoYWluLT5sb2NrLA0KKwlkbWFfZmVuY2VfaW5pdDY0KCZjaGFpbi0+YmFzZSwgJmRt
YV9mZW5jZV9jaGFpbl9vcHMsIE5VTEwsDQogCQkJIGNvbnRleHQsIHNlcW5vKTsNCiANCiAJLyoN
CmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1jaGFpbi5oIGIvaW5jbHVkZS9s
aW51eC9kbWEtZmVuY2UtY2hhaW4uaA0KaW5kZXggNjhjM2MxZTQxMDE0Li5kMzljZTdhMmU1OTkg
MTAwNjQ0DQotLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1jaGFpbi5oDQorKysgYi9pbmNs
dWRlL2xpbnV4L2RtYS1mZW5jZS1jaGFpbi5oDQpAQCAtNDYsNyArNDYsNiBAQCBzdHJ1Y3QgZG1h
X2ZlbmNlX2NoYWluIHsNCiAJCSAqLw0KIAkJc3RydWN0IGlycV93b3JrIHdvcms7DQogCX07DQot
CXNwaW5sb2NrX3QgbG9jazsNCiB9Ow0KIA0KIA0KLS0gDQoyLjQzLjANCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
