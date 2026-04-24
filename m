Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EA6CLdGH72mCCQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 17:59:13 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6000A475C6C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 17:59:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7314C406EA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 15:59:12 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	by lists.linaro.org (Postfix) with ESMTPS id D46DA405CB
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 05:48:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=D0Brfcwe;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of mkchauras@gmail.com designates 209.85.214.179 as permitted sender) smtp.mailfrom=mkchauras@gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2b461310af5so29212825ad.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Apr 2026 22:48:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777009721; x=1777614521; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uUmefGJqV+IRkFPz6sSuv3GYeINth0c7dueYg2gp07o=;
        b=D0BrfcwecwJSG6vostwM1cmFsxu24k2CRQV9UMYPKUh5p3kGj6ALKSDV4Et2jIyRtu
         eUEwbr4GSAFHbZc5pKqboE9ZASzUOXSrWwYcaNnm1/6ug0GT8AwnDOE75GG/xwduDDc0
         j2LJz8d0VVl9Xf2AultwX5kq3tx34SvD8bTkrsdqyDbfvRa+Pdrd4rj0Gi+s+AC7dNka
         L0Uak5HAoD96Xlk05yEIBdSMQQzPgQamWXOckBECxUtHqm5NsFgdWfchalZ0ED65KwSm
         yl21qDn8hRLONxxTog6ML12Qg/h4UGj/toXAIUvllKXLgRwje8LHv0Zz2aRdKZbuOYI5
         Kdnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777009721; x=1777614521;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uUmefGJqV+IRkFPz6sSuv3GYeINth0c7dueYg2gp07o=;
        b=s6D5+3VJzXRpjnWE9l9eysm+E0VKGNjog0PVAuWzvWvh9J4muKKv/YlNecnS48tMUL
         3cP41hoNAlsaZpCYB3Hd/2chBYWXK5vp9sHrqxxhm/gZ/aX0Miplaxlp1rBS7G0SGno8
         7Mi3ijELTM9d0WpIeCa7dES5XhzYiR3l94YzEXdSffmFxo7pHmLmnzP2qWP0HiYXe7jq
         7DjyC95Wh/wLb38rhniIJSOdfpYNEL6aVkCsq0uFnYCJqvy+ZvvNSwVMnn6F/ok7e+rh
         JtySxkSniix/W7Z8vJPfBYTlcEgVIwh2n3vUn33z6eZ5t1DdExYJdRQ0dc18p5fSJuKg
         IZrw==
X-Forwarded-Encrypted: i=1; AFNElJ+7vOvA8djItHifj4M6D627ooxv/yKfsVnIep2xtzdWjeurIICsDxH6yzqSleJjIlBEgVVghvGCSKEWxhZh@lists.linaro.org
X-Gm-Message-State: AOJu0Yy7RmEMGMoFLt4ExH+feMBA/1+AqyrTxwe+Hw6o9jJGV4dmbVGm
	8y8hZGqNlHAPN00q4eUbfPLj3SBWcAYYwa34Y6dPQeNfPRBmIZ4IIE/U
X-Gm-Gg: AeBDiesOF8+19YtWWdI9VjjCp9YsoTFEwN9ZauQ1SimloOQsyJsLhPGoInVcUkeTR0P
	cnZz+EwTPQBfMXNQWnYKDQqQWBcxYa1jJ1hMff8QeVDlyHocnFaf2HFIhWIOXk2Ixw6LKU56gW2
	YbsDPvuqxy0aghsP2EZcyn1yX5c5YBEijzCd27ligrQ8xAW8+vRLnPQKDtNKNyisKCUHDNWrvxG
	aarhPcZ/MEK3yr9H33vCu1agV9mOtJWjRjRVeAbdjJ4phVk+1ppVUavGBPfoZ1U5ek7ACUfjSuq
	JQIQZgGqLAEIFWuG3l/6UW9BLULzLWNibHVAcHeLY8HqeRSePRMXE1YJmK0nHM0UESOBt/gfF3q
	Yrtn9TAjKpv2VpeJtQvFY6d8oonOx6Qsl2L+yUOQxlPizpo45hQX2PmM/ykkOQzJsu5fwsmfmmU
	pvvFN3g96X1KbeCueFwGZ7JbQQmBilxu/by5YS8dwB5X+cQrF8DT0rTduPdZjPJBRV5vTModrMm
	oRefMSBkZYKTf4=
X-Received: by 2002:a17:902:b195:b0:2b2:4bbc:14b0 with SMTP id d9443c01a7336-2b5f9eb272fmr183181305ad.20.1777009720961;
        Thu, 23 Apr 2026 22:48:40 -0700 (PDT)
Received: from li-1a3e774c-28e4-11b2-a85c-acc9f2883e29.bl1-in.ibm.com ([129.41.58.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b5faa176e9sm208778245ad.20.2026.04.23.22.48.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Apr 2026 22:48:40 -0700 (PDT)
From: "Mukesh Kumar Chaurasiya (IBM)" <mkchauras@gmail.com>
To: maddy@linux.ibm.com,
	mpe@ellerman.id.au,
	npiggin@gmail.com,
	chleroy@kernel.org,
	peterz@infradead.org,
	jpoimboe@kernel.org,
	jbaron@akamai.com,
	aliceryhl@google.com,
	rostedt@goodmis.org,
	ardb@kernel.org,
	sumit.semwal@linaro.org,
	christian.koenig@amd.com,
	ojeda@kernel.org,
	boqun@kernel.org,
	gary@garyguo.net,
	bjorn3_gh@protonmail.com,
	lossin@kernel.org,
	a.hindborg@kernel.org,
	tmgross@umich.edu,
	dakr@kernel.org,
	nathan@kernel.org,
	nick.desaulniers+lkml@gmail.com,
	morbo@google.com,
	justinstitt@google.com,
	tamird@kernel.org,
	arnd@arndb.de,
	nsc@kernel.org,
	mkchauras@gmail.com,
	simona.vetter@ffwll.ch,
	linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	rust-for-linux@vger.kernel.org,
	llvm@lists.linux.dev
Date: Fri, 24 Apr 2026 11:17:39 +0530
Message-ID: <20260424054742.45832-5-mkchauras@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260424054742.45832-1-mkchauras@gmail.com>
References: <20260424054742.45832-1-mkchauras@gmail.com>
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: mkchauras@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: T46CP25NO56GHVOKS44ZMVUWBK43M2AY
X-Message-ID-Hash: T46CP25NO56GHVOKS44ZMVUWBK43M2AY
X-Mailman-Approved-At: Mon, 27 Apr 2026 15:58:44 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH V13 4/7] rust/powerpc: Set min rustc version for powerpc
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T46CP25NO56GHVOKS44ZMVUWBK43M2AY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 6000A475C6C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[82];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[36];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,meta];
	FREEMAIL_TO(0.00)[linux.ibm.com,ellerman.id.au,gmail.com,kernel.org,infradead.org,akamai.com,google.com,goodmis.org,linaro.org,amd.com,garyguo.net,protonmail.com,umich.edu,arndb.de,ffwll.ch,lists.ozlabs.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	NEURAL_HAM(-0.00)[-0.962];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mkchauras@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,lkml];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]

Minimum `rustc` version required for powerpc is 1.95 as some critical
features required for compiling rust code for kernel is not there.

For e.g. Stable inline asm support which got merged in 1.95.

Link: https://github.com/rust-lang/rust/pull/147996
Signed-off-by: Mukesh Kumar Chaurasiya (IBM) <mkchauras@gmail.com>
---
 scripts/min-tool-version.sh | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/scripts/min-tool-version.sh b/scripts/min-tool-version.sh
index b96ec2d379b6..406895621511 100755
--- a/scripts/min-tool-version.sh
+++ b/scripts/min-tool-version.sh
@@ -31,7 +31,11 @@ llvm)
 	fi
 	;;
 rustc)
-	echo 1.85.0
+	if [ "$ARCH" = powerpc ]; then
+		echo 1.95.0
+	else
+		echo 1.85.0
+	fi
 	;;
 bindgen)
 	echo 0.71.1
-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
