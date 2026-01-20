Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 51DEED3C653
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 11:57:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6AB763F914
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 10:57:20 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by lists.linaro.org (Postfix) with ESMTPS id B55763F70D
	for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jan 2026 10:57:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="MlL/qzL5";
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.48 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-47d6a1f08bbso18385125e9.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jan 2026 02:57:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768906620; x=1769511420; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9OP6pHxO3DhbDHIe+WR14LfgMR3whcVGTP3WGhPYzRQ=;
        b=MlL/qzL5XeV7BzJ16qYOfB6gdqniW0bGXyfTUAVvmxPo6Fy3KQVIqjkd721qln36MD
         8WjEw8CzjtCnCP9ZBWuGH2e2SsBXB800SmBXVfVJRkIjNXqKQibaAiwLI3CEz7dKfY5x
         G79z8JCSWTuoppJPSIUzzZknYW9zs+LMZIBasC5B3Lx8MCCfhMfwr3/LAz7Tht85pbzm
         swIeseXsZcsJHu4nPitrwIfm0tI/4QlxbMfPhtZ1eYOFIfkUJQEYYwhvW6hVbsdYCvyQ
         tpcoRVBVx0ILUKzeeTBk9CLvPlEcSvYzjsJKcDOPmP17U+be6hXlKfFdJ8O2Z/vg910Q
         HSQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768906620; x=1769511420;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9OP6pHxO3DhbDHIe+WR14LfgMR3whcVGTP3WGhPYzRQ=;
        b=UZ6ASvUihmIcZaT2nApPYYco64zEwCWFgXsFsoJlmti5s6Ix+pXO0ECWPjTzKAi6sS
         MOLMnnAyg5M2R/mzlkMJgsJ/d3B7EYMFbX2hPHYEVwO7myRLJtqbL9FiqqCUrPpCaPn8
         BnVgVdwq0jSRcz8o53BWFXeqqGFr9evIH3YSuljtoRUt8rLq/iI3y+zc3kH71yvQtdGH
         B1bzTxVsbXek6vCt74JWvkSecyWdsxjg+HTodDgveWqJcceb9bArNucA5Ew2PCYBeQ3q
         b6EjU/Qb7gt5cF71VN0xbF/+EA9g5LDDwlcF6jR+h+l99/YtzUm1c52KKBYGYPzuri8t
         o1wQ==
X-Forwarded-Encrypted: i=1; AJvYcCVfdT6Hcabw3oicscFBdDZJtvs+P5krl3pYUMq46mHp92aKftSQRwu1MWtNPvPFw8LxfAEzMGP/lTTdfYmq@lists.linaro.org
X-Gm-Message-State: AOJu0Yw/jvO1dfRuV3FXxmuKhV10sK3k/mwpqG4/7tFSLoeLMalR67yt
	HDxN4PUIj0gNCsldd3cV9TcS+NGmlKyabhYdT8jU1Ug5q3GaUP/tKPJl
X-Gm-Gg: AY/fxX6THY801vv2pj5slR/kjAfsCFgnwMCT/XJvD2ey2R4Ro+rB92fYQ+KDGTSnfBK
	q5A5fbNX+rhphGluVhGqTRZQ5d2HhfpORMVGQnWLEKmOgaa3vSRmg8D0Zy7EUpftwLF6qtb5QyM
	D0yxbi8KlVdKnP6BlF6Y3C3lil/gy2qtRftqE/x3DRUy3+uxLuJ2dveheeTuJi4I7VDc4p0rQiT
	hPqPMJOxZyONwrYNWPvc1DyS1G1oJZBla6h+wgWPGYNK/Hdb3vPk2MPaGLbHC616gQOaHnxzKD+
	C8acUT2XXHb6lHimflVg2I0baiyhfndYSO4IrQEaxN1ROH5eneYsJ5zimMJjeO7rgYaTwJtdeQC
	JgpolgN6is25EuCsU1rn3wuERY2NRfnUSNEMIA6K54kZWvmLkZZXji3UV4PhdY9y1PXMNM+gAYq
	J9mg0Qai0HKSCHYdxQ1uFjdsIXbS1R+JUFNPg=
X-Received: by 2002:a05:600c:8b64:b0:47a:8cce:2940 with SMTP id 5b1f17b1804b1-4801eac0f22mr170263815e9.14.1768906619247;
        Tue, 20 Jan 2026 02:56:59 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:1563:d000:1067:f6c4:3bf8:ea8a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801fe67780sm99418105e9.16.2026.01.20.02.56.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 02:56:58 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Tue, 20 Jan 2026 11:54:40 +0100
Message-ID: <20260120105655.7134-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260120105655.7134-1-christian.koenig@amd.com>
References: <20260120105655.7134-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Queue-Id: B55763F70D
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.48:from];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DNSWL_BLOCKED(0.00)[2a00:e180:1563:d000:1067:f6c4:3bf8:ea8a:received,209.85.128.48:from];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 4M7AMTYIJUWFSSP4S5FQIQSN6YYUH2GZ
X-Message-ID-Hash: 4M7AMTYIJUWFSSP4S5FQIQSN6YYUH2GZ
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/9] dma-buf: add dma_fence_was_initialized function v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4M7AMTYIJUWFSSP4S5FQIQSN6YYUH2GZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U29tZSBkcml2ZXIgdXNlIGZlbmNlLT5vcHMgdG8gdGVzdCBpZiBhIGZlbmNlIHdhcyBpbml0aWFs
aXplZCBvciBub3QuDQpUaGUgcHJvYmxlbSBpcyB0aGF0IHRoaXMgdXRpbGl6ZXMgaW50ZXJuYWwg
YmVoYXZpb3Igb2YgdGhlIGRtYV9mZW5jZQ0KaW1wbGVtZW50YXRpb24uDQoNClNvIGJldHRlciBh
YnN0cmFjdCB0aGF0IGludG8gYSBmdW5jdGlvbi4NCg0KdjI6IHVzZSBhIGZsYWcgaW5zdGVhZCBv
ZiB0ZXN0aW5nIGZlbmNlLT5vcHMsIHJlbmFtZSB0aGUgZnVuY3Rpb24sIG1vdmUNCiAgICB0byB0
aGUgYmVnaW5uaW5nIG9mIHRoZSBwYXRjaCBzZXQuDQoNClNpZ25lZC1vZmYtYnk6IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1
Zi9kbWEtZmVuY2UuYyAgICAgICAgICAgICB8ICAyICstDQogZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X2pvYi5jIHwgMTMgKysrKysrKy0tLS0tLQ0KIGRyaXZlcnMvZ3B1L2RybS9x
eGwvcXhsX3JlbGVhc2UuYyAgICAgICB8ICAyICstDQogaW5jbHVkZS9saW51eC9kbWEtZmVuY2Uu
aCAgICAgICAgICAgICAgIHwgMTUgKysrKysrKysrKysrKysrDQogNCBmaWxlcyBjaGFuZ2VkLCAy
NCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9k
bWEtYnVmL2RtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQppbmRleCAy
MWM1YzMwYjRmMzQuLmM5YTAzNmIwZDU5MiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtZmVuY2UuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQpAQCAtMTA1NCw3
ICsxMDU0LDcgQEAgX19kbWFfZmVuY2VfaW5pdChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgY29u
c3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgKm9wcywNCiAJZmVuY2UtPmxvY2sgPSBsb2NrOw0KIAlm
ZW5jZS0+Y29udGV4dCA9IGNvbnRleHQ7DQogCWZlbmNlLT5zZXFubyA9IHNlcW5vOw0KLQlmZW5j
ZS0+ZmxhZ3MgPSBmbGFnczsNCisJZmVuY2UtPmZsYWdzID0gZmxhZ3MgfCBCSVQoRE1BX0ZFTkNF
X0ZMQUdfSU5JVElBTElaRURfQklUKTsNCiAJZmVuY2UtPmVycm9yID0gMDsNCiANCiAJdHJhY2Vf
ZG1hX2ZlbmNlX2luaXQoZmVuY2UpOw0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV9qb2IuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9q
b2IuYw0KaW5kZXggMGEwZGNiZjA3OThkLi5kMWU3NGQwMDUwYzcgMTAwNjQ0DQotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfam9iLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV9qb2IuYw0KQEAgLTI3OCw5ICsyNzgsMTAgQEAgdm9pZCBhbWRn
cHVfam9iX2ZyZWVfcmVzb3VyY2VzKHN0cnVjdCBhbWRncHVfam9iICpqb2IpDQogCXVuc2lnbmVk
IGk7DQogDQogCS8qIENoZWNrIGlmIGFueSBmZW5jZXMgd2VyZSBpbml0aWFsaXplZCAqLw0KLQlp
ZiAoam9iLT5iYXNlLnNfZmVuY2UgJiYgam9iLT5iYXNlLnNfZmVuY2UtPmZpbmlzaGVkLm9wcykN
CisJaWYgKGpvYi0+YmFzZS5zX2ZlbmNlICYmDQorCSAgICBkbWFfZmVuY2Vfd2FzX2luaXRpYWxp
emVkKCZqb2ItPmJhc2Uuc19mZW5jZS0+ZmluaXNoZWQpKQ0KIAkJZiA9ICZqb2ItPmJhc2Uuc19m
ZW5jZS0+ZmluaXNoZWQ7DQotCWVsc2UgaWYgKGpvYi0+aHdfZmVuY2UgJiYgam9iLT5od19mZW5j
ZS0+YmFzZS5vcHMpDQorCWVsc2UgaWYgKGRtYV9mZW5jZV93YXNfaW5pdGlhbGl6ZWQoJmpvYi0+
aHdfZmVuY2UtPmJhc2UpKQ0KIAkJZiA9ICZqb2ItPmh3X2ZlbmNlLT5iYXNlOw0KIAllbHNlDQog
CQlmID0gTlVMTDsNCkBAIC0yOTcsMTEgKzI5OCwxMSBAQCBzdGF0aWMgdm9pZCBhbWRncHVfam9i
X2ZyZWVfY2Ioc3RydWN0IGRybV9zY2hlZF9qb2IgKnNfam9iKQ0KIA0KIAlhbWRncHVfc3luY19m
cmVlKCZqb2ItPmV4cGxpY2l0X3N5bmMpOw0KIA0KLQlpZiAoam9iLT5od19mZW5jZS0+YmFzZS5v
cHMpDQorCWlmIChkbWFfZmVuY2Vfd2FzX2luaXRpYWxpemVkKCZqb2ItPmh3X2ZlbmNlLT5iYXNl
KSkNCiAJCWRtYV9mZW5jZV9wdXQoJmpvYi0+aHdfZmVuY2UtPmJhc2UpOw0KIAllbHNlDQogCQlr
ZnJlZShqb2ItPmh3X2ZlbmNlKTsNCi0JaWYgKGpvYi0+aHdfdm1fZmVuY2UtPmJhc2Uub3BzKQ0K
KwlpZiAoZG1hX2ZlbmNlX3dhc19pbml0aWFsaXplZCgmam9iLT5od192bV9mZW5jZS0+YmFzZSkp
DQogCQlkbWFfZmVuY2VfcHV0KCZqb2ItPmh3X3ZtX2ZlbmNlLT5iYXNlKTsNCiAJZWxzZQ0KIAkJ
a2ZyZWUoam9iLT5od192bV9mZW5jZSk7DQpAQCAtMzM1LDExICszMzYsMTEgQEAgdm9pZCBhbWRn
cHVfam9iX2ZyZWUoc3RydWN0IGFtZGdwdV9qb2IgKmpvYikNCiAJaWYgKGpvYi0+Z2FuZ19zdWJt
aXQgIT0gJmpvYi0+YmFzZS5zX2ZlbmNlLT5zY2hlZHVsZWQpDQogCQlkbWFfZmVuY2VfcHV0KGpv
Yi0+Z2FuZ19zdWJtaXQpOw0KIA0KLQlpZiAoam9iLT5od19mZW5jZS0+YmFzZS5vcHMpDQorCWlm
IChkbWFfZmVuY2Vfd2FzX2luaXRpYWxpemVkKCZqb2ItPmh3X2ZlbmNlLT5iYXNlKSkNCiAJCWRt
YV9mZW5jZV9wdXQoJmpvYi0+aHdfZmVuY2UtPmJhc2UpOw0KIAllbHNlDQogCQlrZnJlZShqb2It
Pmh3X2ZlbmNlKTsNCi0JaWYgKGpvYi0+aHdfdm1fZmVuY2UtPmJhc2Uub3BzKQ0KKwlpZiAoZG1h
X2ZlbmNlX3dhc19pbml0aWFsaXplZCgmam9iLT5od192bV9mZW5jZS0+YmFzZSkpDQogCQlkbWFf
ZmVuY2VfcHV0KCZqb2ItPmh3X3ZtX2ZlbmNlLT5iYXNlKTsNCiAJZWxzZQ0KIAkJa2ZyZWUoam9i
LT5od192bV9mZW5jZSk7DQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfcmVs
ZWFzZS5jIGIvZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfcmVsZWFzZS5jDQppbmRleCA3YjNjOWE2
MDE2ZGIuLjA2YjBiMmFhNzk1MyAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9xeGwvcXhs
X3JlbGVhc2UuYw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfcmVsZWFzZS5jDQpAQCAt
MTQ2LDcgKzE0Niw3IEBAIHF4bF9yZWxlYXNlX2ZyZWUoc3RydWN0IHF4bF9kZXZpY2UgKnFkZXYs
DQogCWlkcl9yZW1vdmUoJnFkZXYtPnJlbGVhc2VfaWRyLCByZWxlYXNlLT5pZCk7DQogCXNwaW5f
dW5sb2NrKCZxZGV2LT5yZWxlYXNlX2lkcl9sb2NrKTsNCiANCi0JaWYgKHJlbGVhc2UtPmJhc2Uu
b3BzKSB7DQorCWlmIChkbWFfZmVuY2Vfd2FzX2luaXRpYWxpemVkKCZyZWxlYXNlLT5iYXNlKSkg
ew0KIAkJV0FSTl9PTihsaXN0X2VtcHR5KCZyZWxlYXNlLT5ib3MpKTsNCiAJCXF4bF9yZWxlYXNl
X2ZyZWVfbGlzdChyZWxlYXNlKTsNCiANCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1m
ZW5jZS5oIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KaW5kZXggZDRjOTJmZDM1MDkyLi45
YzRkMjUyODkyMzkgMTAwNjQ0DQotLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQorKysg
Yi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQpAQCAtNDgsNiArNDgsNyBAQCBzdHJ1Y3Qgc2Vx
X2ZpbGU7DQogICogYXRvbWljIG9wcyAoYml0XyopLCBzbyB0YWtpbmcgdGhlIHNwaW5sb2NrIHdp
bGwgbm90IGJlIG5lZWRlZCBtb3N0DQogICogb2YgdGhlIHRpbWUuDQogICoNCisgKiBETUFfRkVO
Q0VfRkxBR19JTklUSUFMSVpFRF9CSVQgLSBmZW5jZSB3YXMgaW5pdGlhbGl6ZWQNCiAgKiBETUFf
RkVOQ0VfRkxBR19TSUdOQUxFRF9CSVQgLSBmZW5jZSBpcyBhbHJlYWR5IHNpZ25hbGVkDQogICog
RE1BX0ZFTkNFX0ZMQUdfVElNRVNUQU1QX0JJVCAtIHRpbWVzdGFtcCByZWNvcmRlZCBmb3IgZmVu
Y2Ugc2lnbmFsaW5nDQogICogRE1BX0ZFTkNFX0ZMQUdfRU5BQkxFX1NJR05BTF9CSVQgLSBlbmFi
bGVfc2lnbmFsaW5nIG1pZ2h0IGhhdmUgYmVlbiBjYWxsZWQNCkBAIC05OCw2ICs5OSw3IEBAIHN0
cnVjdCBkbWFfZmVuY2Ugew0KIH07DQogDQogZW51bSBkbWFfZmVuY2VfZmxhZ19iaXRzIHsNCisJ
RE1BX0ZFTkNFX0ZMQUdfSU5JVElBTElaRURfQklULA0KIAlETUFfRkVOQ0VfRkxBR19TRVFOTzY0
X0JJVCwNCiAJRE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURfQklULA0KIAlETUFfRkVOQ0VfRkxBR19U
SU1FU1RBTVBfQklULA0KQEAgLTI2Myw2ICsyNjUsMTkgQEAgdm9pZCBkbWFfZmVuY2VfcmVsZWFz
ZShzdHJ1Y3Qga3JlZiAqa3JlZik7DQogdm9pZCBkbWFfZmVuY2VfZnJlZShzdHJ1Y3QgZG1hX2Zl
bmNlICpmZW5jZSk7DQogdm9pZCBkbWFfZmVuY2VfZGVzY3JpYmUoc3RydWN0IGRtYV9mZW5jZSAq
ZmVuY2UsIHN0cnVjdCBzZXFfZmlsZSAqc2VxKTsNCiANCisvKioNCisgKiBkbWFfZmVuY2Vfd2Fz
X2luaXRpYWxpemVkIC0gdGVzdCBpZiBmZW5jZSB3YXMgaW5pdGlhbGl6ZWQNCisgKiBAZmVuY2U6
IGZlbmNlIHRvIHRlc3QNCisgKg0KKyAqIFJldHVybjogVHJ1ZSBpZiBmZW5jZSB3YXMgZXZlciBp
bml0aWFsaXplZCwgZmFsc2Ugb3RoZXJ3aXNlLiBXb3JrcyBjb3JyZWN0bHkNCisgKiBvbmx5IHdo
ZW4gbWVtb3J5IGJhY2tpbmcgdGhlIGZlbmNlIHN0cnVjdHVyZSBpcyB6ZXJvIGluaXRpYWxpemVk
IG9uDQorICogYWxsb2NhdGlvbi4NCisgKi8NCitzdGF0aWMgaW5saW5lIGJvb2wgZG1hX2ZlbmNl
X3dhc19pbml0aWFsaXplZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCit7DQorCXJldHVybiBm
ZW5jZSAmJiB0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19JTklUSUFMSVpFRF9CSVQsICZmZW5jZS0+
ZmxhZ3MpOw0KK30NCisNCiAvKioNCiAgKiBkbWFfZmVuY2VfcHV0IC0gZGVjcmVhc2VzIHJlZmNv
dW50IG9mIHRoZSBmZW5jZQ0KICAqIEBmZW5jZTogZmVuY2UgdG8gcmVkdWNlIHJlZmNvdW50IG9m
DQotLSANCjIuNDMuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
