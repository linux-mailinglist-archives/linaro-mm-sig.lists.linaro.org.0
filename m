Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 51982605FD2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Oct 2022 14:13:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0E9013F5BE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Oct 2022 12:13:38 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by lists.linaro.org (Postfix) with ESMTPS id DA70E3EBEA
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Oct 2022 12:13:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=d91sBiTi;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.218.47 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f47.google.com with SMTP id r17so46862192eja.7
        for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Oct 2022 05:13:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=ROijZBsfCp5nwfZGpEnxEbdAf/AY7Fs0eA43B378T0E=;
        b=d91sBiTi2Bhfl+23JfbH6YBe42/IkI2JcDphLqOztEtpWlO8LvyxKrPln8VVk+pbKK
         WquslawhT9Ii0zytsj7jHjYQ07vZ386au4l6aJwRvvuoK7t2LyqxIGRW+8MM0PMCE7wz
         w9S+v9FUgf+ci3hNNdbvjg06kIRIj2jThXej1sBjBjjsZ48SxcDpK/zOP1RfvlenlaA5
         CJ8Q2gZ9vKVVnrQFrPmRkLTIngaDD1Xvxee9NXuBmGc+NV9fPrv9Re1OJEpCtqDQJEHV
         tN+q8BIPpGIa/tV+aQIzt/JT7ilH7Ne8yMHm/VaKp4BGwET27/Pg/un8TNt9/JmBmKrC
         5uLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ROijZBsfCp5nwfZGpEnxEbdAf/AY7Fs0eA43B378T0E=;
        b=MPH+7rUClPSZYZsV7x/eEXMsOaykNM4ooa/4jYdHUS4amdyQVHqfdBSE30PLaS0clt
         P+OPxMLc9MvBl8wLtVqXCDNDl3QvNK0GVNhnzM5qrwK7db7QDHSfJ0BEXK8fwqKmTVU7
         Sbr1+8s0190z55fb1Luz+kUlNVsX0Sm2wZILeD3pxO6sebo8o4rhNyJkMd0DUpEZ5cgT
         yY74deOe2NARgE8QAfdBaZztJUWka04Wae+CUFealuhJ65eEkTgY1EzIyk+YEdl7KlYM
         B50xVhoIuRoMJBjfGBPEwFVMrbYQoTHZsovDOe7Y439zSQgSI6OCrJZFPD5S1m9rK1q2
         h2EQ==
X-Gm-Message-State: ACrzQf3BjrV0dNysCbDAHlupKVJxcM+U85goKEkiGB2/gH1Fo5bG7tQu
	plAxkMShNx3I7wD4j5TP1qk=
X-Google-Smtp-Source: AMsMyM7qDtP0w6wVba+Feg+zIDvtC05ojhxakeh/4a8CXAd7WE8AC0TXgM6prI/RozgKiJXO/flz4A==
X-Received: by 2002:a17:907:2c4f:b0:78d:eebe:f413 with SMTP id hf15-20020a1709072c4f00b0078deebef413mr10770667ejc.221.1666267999774;
        Thu, 20 Oct 2022 05:13:19 -0700 (PDT)
Received: from able.fritz.box (p5b0eacfe.dip0.t-ipconnect.de. [91.14.172.254])
        by smtp.gmail.com with ESMTPSA id s15-20020a05640217cf00b0045467008dd0sm12091979edy.35.2022.10.20.05.13.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Oct 2022 05:13:19 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: l.stach@pengutronix.de,
	nicolas@ndufresne.ca,
	ppaalanen@gmail.com,
	sumit.semwal@linaro.org,
	daniel@ffwll.ch,
	robdclark@gmail.com,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	linux-media@vger.kernel.org
Date: Thu, 20 Oct 2022 14:13:13 +0200
Message-Id: <20221020121316.3946-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -----
X-Rspamd-Queue-Id: DA70E3EBEA
X-Spamd-Result: default: False [-5.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.218.47:from];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.923];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	TAGGED_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_NONE(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.47:from];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[pengutronix.de,ndufresne.ca,gmail.com,linaro.org,ffwll.ch,lists.freedesktop.org,lists.linaro.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: SWG7QTAUHARU7YVHOLFIC3DDLG4L4DNL
X-Message-ID-Hash: SWG7QTAUHARU7YVHOLFIC3DDLG4L4DNL
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Try to address the DMA-buf coherency problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SWG7QTAUHARU7YVHOLFIC3DDLG4L4DNL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi guys,

after finding that we essentially have two separate worlds for coherent sharing
of buffer through DMA-buf I thought I will tackle that problem a bit and at
least allow the framework to reject attachments which won't work.

So those patches here add a new dma_coherent flag to each DMA-buf object
telling the framework that dev_is_dma_coherent() needs to return true for an
importing device to be able to attach. Since we should always have a fallback
path this should give userspace the chance to still keep the use case working,
either by doing a CPU copy instead or reversing the roles of exporter and
importer.

For DRM and most V4L2 devices I then fill in the dma_coherent flag based on the
return value of dev_is_dma_coherent(). Exporting drivers are allowed to clear
the flag for their buffers if special handling like the USWC flag in amdgpu or
the uncached allocations for radeon/nouveau are in use.

Additional to that importers can also check the flag if they have some
non-snooping operations like the special scanout case for amdgpu for example.

The patches are only smoke tested and the solution isn't ideal, but as far as
I can see should at least keep things working.

Please review and/or comment,
Christian.


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
