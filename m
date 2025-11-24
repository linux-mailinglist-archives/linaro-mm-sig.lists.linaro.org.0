Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBNfBRUA4Wk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:28:21 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5AB410C2A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:28:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0959040A23
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:28:20 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by lists.linaro.org (Postfix) with ESMTPS id D64503F719
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Nov 2025 13:41:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=Xl9xbZmO;
	spf=pass (lists.linaro.org: domain of anuj1072538@gmail.com designates 209.85.208.44 as permitted sender) smtp.mailfrom=anuj1072538@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-63c489f1e6cso145926a12.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Nov 2025 05:41:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763991696; x=1764596496; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9WiU+fUOoaOr/u86tVujVIv6iGVYl9gAhlsoumb2r9I=;
        b=Xl9xbZmOyzgl4g9tB0oGAPxq9uq0S4DrPJQc7vBR4aGTORbdKYNvSdyLJ8kTNfQbMu
         As+Oevzbmi/EcQ0Hz/sJqlA5aMxmNM9xnwEpW2COMyyg5p2bnu8csE+g8a4R+rGfJega
         2eJkFHNqHWscuKV1EMDxkKvgBrqXIFK+F3JKdBARSurxp3Eb9AySZ1lX617XT6vGbg3P
         aDwo4WnNTzqnkZId5qVwhSgIi4/N2QJb/pNJMskV03vR71X6qvkHdYtKbmsH/Selxk47
         MEPg/WIP0fFJDTl0reQAwV/9ddh3DlQvkchAkFR+mWZtXdozJImx3OUESBbc1St16A4O
         vxfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763991696; x=1764596496;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9WiU+fUOoaOr/u86tVujVIv6iGVYl9gAhlsoumb2r9I=;
        b=qWcGdMZPOPQRVOtsaJKf9QWpxZC3ZrHM1nldwH7fkZ2lAWUz2uCBf42wu9QBMPvwHg
         Jt9OZ7VTbq9zaWQugb19ZmuDAptT72HHpkiWCYrOp7SBamnkBCZss9LpkxMbfVwm591e
         WjI0Y4lVHay1vBuR3RLWhocIuagNyjq4LbKddbTdthJz/HFNpiWo/ZzgiF2jzdoCGLEs
         G7U4t7EU7xfwug6Egxvq05OwZxYenA6RdOIOyr8zSOU78dnoR/gqat/Al64opT0TVIBo
         smrHPpBnqfpDgHgQcUkx5O/Ruy8gALyJc4ris6jxbMApsT2zv7iUo0ysA3cxMgpluZQk
         oiaA==
X-Forwarded-Encrypted: i=1; AJvYcCVLx5lIEDgBl58595dhrmJqY24w7cA66R7AM2RHcBZv4wmKBJg+UP8GzC2qeih0JKJPM5zAeL4bVQU1r6Md@lists.linaro.org
X-Gm-Message-State: AOJu0YygNsJ2DpYrzEcJFrbDMpZvdAvnMlQJ2nHcfMEe2lLyDkL6bpAP
	Q6/wuTP1PdskUc+GfHVVmRqzR0TM1seDAEWDKWZd40xqrtzk04sXNu+IUSbPsDuAzFyS2+85VaB
	jAjAqdeiuH9erwO95p09wbuilmbN16w==
X-Gm-Gg: ASbGnctf0s1p/QLS+JufwqvDlMIdBOgWbxfbJVi3cZxbRLANmfQ0gy//QHVqezSUmZY
	wbKzY4B/a2KV3aC5fLZakt031jmlaPx2wdQGhE/LRIJKXJprHhKg4Pv3L9riFu4wcWCJmnKEoaO
	E+JAoZQqnyGKL4MoY1OqsJ4wLOWiaHV9+BMr5mV5lcMY7JmhnTU6Tktxk1FfABmzvoL3/UJBzA1
	R5mEcIaOqVqgyjWT6oTr9JoyZKjfmThIMWPtKjqqqsQskcJkbJiJozPeL017cNADMGzfDJOjgle
	DwoZQK6OIwaSY6iy89KJJP5Mu3YsZ8LUahaNyd5LgmC/dpALSf67sld9
X-Google-Smtp-Source: AGHT+IGfVsoGjX5Sxy1dySCnIJESUxRCyabV8O63iUc1Le7y4o1Ai34RI3broPwT+Hj5nWquSwgUdOuJhlEdpZCZaGc=
X-Received: by 2002:a05:6402:40c1:b0:640:ef03:82de with SMTP id
 4fb4d7f45d1cf-645550809a7mr11399195a12.4.1763991695708; Mon, 24 Nov 2025
 05:41:35 -0800 (PST)
MIME-Version: 1.0
References: <cover.1763725387.git.asml.silence@gmail.com> <9bc25f46d2116436d73140cd8e8554576de2caca.1763725388.git.asml.silence@gmail.com>
In-Reply-To: <9bc25f46d2116436d73140cd8e8554576de2caca.1763725388.git.asml.silence@gmail.com>
From: Anuj gupta <anuj1072538@gmail.com>
Date: Mon, 24 Nov 2025 19:10:59 +0530
X-Gm-Features: AWmQ_blM0KWu7aUv8ArY5r4a9fsKMGwJG-SFJqiYxWiv8fYwoMfNFeWPT1HOzl8
Message-ID: <CACzX3AsXD_C50CY0KYNjt5yMY4hm-ZDLQU5dQSJAmP3Duerauw@mail.gmail.com>
To: Pavel Begunkov <asml.silence@gmail.com>
X-Spamd-Bar: ---
X-MailFrom: anuj1072538@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FTUMGB3JEA6634PL4X7ZB3B2DSOMKPA6
X-Message-ID-Hash: FTUMGB3JEA6634PL4X7ZB3B2DSOMKPA6
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:06:52 +0000
CC: linux-block@vger.kernel.org, io-uring@vger.kernel.org, Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 06/11] nvme-pci: add support for dmabuf reggistration
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FTUMGB3JEA6634PL4X7ZB3B2DSOMKPA6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[3433];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.947];
	FROM_NEQ_ENVFROM(0.00)[anuj1072538@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: DF5AB410C2A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

nit:
s/reggistration/registration/ in subject

Also a MODULE_IMPORT_NS("DMA_BUF") needs to be added, since it now uses
symbols from the DMA_BUF namespace, otherwise we got a build error
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
