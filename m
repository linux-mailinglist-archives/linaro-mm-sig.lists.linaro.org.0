Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6DwpAsMQ4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:39:31 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC30411CFA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:39:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BE31D44BE0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:39:29 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by lists.linaro.org (Postfix) with ESMTPS id 613C53F7F8
	for <linaro-mm-sig@lists.linaro.org>; Fri,  6 Feb 2026 15:06:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=VMD1XdOp;
	spf=pass (lists.linaro.org: domain of anuj1072538@gmail.com designates 209.85.208.52 as permitted sender) smtp.mailfrom=anuj1072538@gmail.com;
	arc=pass ("google.com:s=arc-20240605:i=1");
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-65814266b08so3477165a12.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 06 Feb 2026 07:06:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770390372; cv=none;
        d=google.com; s=arc-20240605;
        b=fyaeNbAmv0GBpqXOv4XO3/9c7iLT3iIt1H3Y83AcUqGXNdNHJZknEjcRcgKKXEkSlY
         5xbwQWBNzVfft5x8pxShhgjc0NBQLIo79oEH0/fooSqlWeaGdeSkMC/AQSwBFMy0KVWZ
         9LK8hPFS6ZBFaDNByGDm7eV5GWtnJkeFgErChmiVBuJjfdjvfmdyqR/rN/AYWhKgB4VE
         3AcS1DmmyPkk7Y9Fdog1pOKUmk52Drmo9MQkA1Q1aPdQtMxJsSNkEr6jr4fSwJH4FSG6
         Gj+FXEJOYFYv+jW5jgb1X0E+KIyh7SqkwgSaKZnfAOige95wAeCbS9MeN8KVEdFevZ+G
         jujg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hGQBxRDZvTlf47Wu9lDxdnyR2cqQuj+x+M/+cDeQX7w=;
        fh=VYq1H8yRDfOVd4K7vzdvcT/gwwOASSzHlPtNAdydYfA=;
        b=FsdnkN7+npXZJMx514fi9sMjbHlKrFFXp95wRVQj3Eva1QmZM86Aom4xpMfmgSXCRS
         YfBEXDBfqfzdUEedjolzbMbzzP+QeMcUDL+NAUnivvvE+YfQJiTWoLCoaSr2YI2GNQVD
         h2BS2kVb7fIx2fStcJ4afWemd8/Knksz0i6Z7KONZIJneJ+Hlxi6KBkyeBgkL0iX4j4M
         yPav3djTFTSITlVHvr0ryTkanIOmTUBwMo+MxnLcOTbqRtfV03jLygrt5DSbod6Gr4tq
         qEvHIeTb9lFn4svPNipuCWGLEE8P+e/1GfQ/ievFlBFmUtEgmtMgEUrG6SNhn6SrNUXp
         gw0A==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770390372; x=1770995172; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hGQBxRDZvTlf47Wu9lDxdnyR2cqQuj+x+M/+cDeQX7w=;
        b=VMD1XdOpzHlu7XCNd+hJlucYNP8O/NEr2nY/DJqwbh1fIlwoU1xeTTqQrxF2LKCL4j
         OqkLqd63vJm+qJBIzaiISn3n0ypmfwSwClvbQSQfckNrqQBLO1go6qOP3XkVRaPyMTz7
         qCv58TFYYDDWXvty3ffivpObfGrxuq/evd1wD8nSjGRfDsm1krdkpE2yD2ENXXRUtW2j
         7+OhULOzg/nqOjxZA1gTdp64OjJWYrE4ETM/P7F0IZ0/8WOLeFPLV+kGoOINlCH8gbpR
         Br7AA/BOBg1RGrTVQiNtOesKvSPcysT7JCz3kH+Nz8ikYtuVXbec4LjXZ7u+MkaMlh3D
         lKsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770390372; x=1770995172;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hGQBxRDZvTlf47Wu9lDxdnyR2cqQuj+x+M/+cDeQX7w=;
        b=GGqCtzAoPwtUV+UUIAVyUlM8zbv//okzp+H1h3+1tlOnFto6MYXHv4k4Pvx08EvGBk
         BOsuoZeUfD71aTYCF4QHGvmEEhTlAWljGgVXnmC7mooH5A3RACVVcAgSfP0TjaPrGpTO
         dB1kSTljVTuveeeAZylCoATI/8kX2V8W2QIJTDEp2dXQVwQhCPI989R/eh6sEoPSBOOK
         n5JpxtwHrx6JxRFK+ifWohKAPMYSdThF9tXoQYl8Wb2khIg0+fPCha221qx8iROxuZNE
         tOAao7rLlzrjhseuQCxixwc7nBz6xSGAMAG/r8DNPf5lCkfRqE/md5BgmDHvU9Yfzujp
         zbTQ==
X-Forwarded-Encrypted: i=1; AJvYcCX28yjsLI+gSB75QpzT2Or1UFXPc3J4/c/BdcDZlVUzxj7l8OCVUwwdEdj0Za1q23Obmvom9rzkHz03zHNl@lists.linaro.org
X-Gm-Message-State: AOJu0YzINFhARNYnatD87xyuUlh4L9TN6g9PEm5mft0x0oMYmuvp1aY7
	7DlP4ARPB6CKZebOjaOCv8MofSWvRBhBB0HWvcFDcSK0WYWTybXPwtB0FrM+FQdHwS6Ub/1kd7H
	alT52nnNxt9nrYWe3VXGAO0cRz2Gorg==
X-Gm-Gg: AZuq6aIJa34rFJXmpnf+fyw03lQNYbCLqpTkh+4rhTGJlhlW1yALFhUFJXVkN8osAIB
	DyO6pLvfAUJwzCbAk3NyLmGxkAq9rQaY4jPaRy6VUxDz8pGsBl5lncnIkz1jZ5oJuInFCIZnuXt
	oxsHgHHLvhqj6SbZEGbWW07H2LCWTQjgkS2grnBxfy0gcVisvob7dOWj/ekMTXQ7tdzGeCRH4Du
	zOB5x+lyhKft3Fw84Y2mhwlaVoqV3Soj3YODfIebr66Ebw3jDZxqpt0Di3pcLSLtoUr7H8wDBiY
	NFkJBu30YB7qiZC/k7k68iTjwblNERR8WH1obECCyFSE7f98/hAAdhAj3VwIgbjJe+5V
X-Received: by 2002:a05:6402:5113:b0:658:dbf:d1a0 with SMTP id
 4fb4d7f45d1cf-659841a2f31mr1582224a12.30.1770390372219; Fri, 06 Feb 2026
 07:06:12 -0800 (PST)
MIME-Version: 1.0
References: <cover.1763725387.git.asml.silence@gmail.com> <12530de6d1907afb44be3e76e7668b935f1fd441.1763725387.git.asml.silence@gmail.com>
In-Reply-To: <12530de6d1907afb44be3e76e7668b935f1fd441.1763725387.git.asml.silence@gmail.com>
From: Anuj gupta <anuj1072538@gmail.com>
Date: Fri, 6 Feb 2026 20:35:34 +0530
X-Gm-Features: AZwV_QhZUfBhtu2huNeoyo9GkYijd3hbyMiyHPwiXwArHA1o3azl0x64XYjc0yI
Message-ID: <CACzX3AuNL0g_VvxMSbUu185rvn97+NpZqOVj246-9q9hAVPa9g@mail.gmail.com>
To: Pavel Begunkov <asml.silence@gmail.com>
X-Spamd-Bar: ----
X-MailFrom: anuj1072538@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: H3AYK2AUWG3B325PDOUAFCRRCLNH3TNJ
X-Message-ID-Hash: H3AYK2AUWG3B325PDOUAFCRRCLNH3TNJ
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:36:07 +0000
CC: linux-block@vger.kernel.org, io-uring@vger.kernel.org, Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 04/11] block: introduce dma token backed bio type
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H3AYK2AUWG3B325PDOUAFCRRCLNH3TNJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DATE_IN_PAST(1.00)[1657];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anuj1072538@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.932];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,mail.gmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: ABC30411CFA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> @@ -328,6 +328,29 @@ int bio_split_io_at(struct bio *bio, const struct queue_limits *lim,
>         unsigned nsegs = 0, bytes = 0, gaps = 0;
>         struct bvec_iter iter;
>
> +       if (bio_flagged(bio, BIO_DMA_TOKEN)) {
> +               int offset = offset_in_page(bio->bi_iter.bi_bvec_done);
> +
> +               nsegs = ALIGN(bio->bi_iter.bi_size + offset, PAGE_SIZE);
> +               nsegs >>= PAGE_SHIFT;
> +
> +               if (offset & lim->dma_alignment || bytes & len_align_mask)
> +                       return -EINVAL;

bytes == 0 is a dead check here. Probably you would like to check the
length of the first and last segment to match with what the normal path
below is doing.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
