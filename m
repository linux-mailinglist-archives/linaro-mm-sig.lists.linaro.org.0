Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5CD9AE531
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Oct 2024 14:42:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D916F45404
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Oct 2024 12:42:12 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by lists.linaro.org (Postfix) with ESMTPS id 2C0BC40A8F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Oct 2024 12:42:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=ezNYBwPE;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.218.46 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a99ea294480so56671666b.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Oct 2024 05:42:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729773724; x=1730378524; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=y3NK5f7I3T0kVap6zRG0XmzzEF76zGfHonnvdBs/CS8=;
        b=ezNYBwPEOFFi1ftZ8jSbIoVihLFk9bOyjOml5xt+MgdCJCE9+K5d9aguFjYgosqFuA
         iuV0j1UpLuWliJxT0wyxrylOylpyJ4FigJ3VWeGrmOWHT2/YJsjYT3LI0oTOccAutL7E
         wjpebK6E5kFEgXsoNsE5sCPD84V/WS6GsOWYTFNl/0BacpNRqz+Qi0sApsnkthGM6q+d
         odDW7jbKT78plXZYoMEPWQdzk3PNJ8UbU/dtJ6hizIuCq0vPgz1DfhO7Y6IeTrlSuABA
         knV+Xe+U/gvVuvkdLpT0lSfKgx+/ZDlBoYLUlBe6abKtWuGm8jKI5NuZ098c9On2HPQW
         3+VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729773724; x=1730378524;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y3NK5f7I3T0kVap6zRG0XmzzEF76zGfHonnvdBs/CS8=;
        b=Pt3+EvM+jaWrpCxFURWLN+xKLPD5yz5YOzVB3wxCotKj+k58Wff/kSy5PxhwS44m2W
         m7oY5moWjYr601zqTbK3bWmMXrRcvgkaAYUM2tCcYANcU92ODkTX57Mrmr7XJypgdjSh
         Vgv3037h63YePkULswpp0vVLcPeQyfwqXGbMJsS7vSbuLYYjyQ6+E2Oduu/RXC/aO2iZ
         1g86SG6CbW5BGvGT3wFPx9Ft/I+gQZJ7fVs3jMgieSP5ed/Sz38devfHPu3Y60QG8iI4
         UNBuNcXVR5wIWc1eL9OzsSY83k4MCzD4jSmXWPt6JAa71KziQHdUG2Q5LIhNp4FBAcEG
         TSIQ==
X-Forwarded-Encrypted: i=1; AJvYcCVYagGRgaCtRA0pHDGjeII1RkzXwkOdbdiUKuIhM6UTXEZZeyo8LUOMmoIz0jtf3/PNqBl9F/15KXdvPhyf@lists.linaro.org
X-Gm-Message-State: AOJu0YyMngo92YiK620C/ySUjEn5h0ufaLQs8/BpRR1FDB7OqXoCgSOI
	ylGzpQzdHd0PmIVgKItYkTpf4JJlwV/MZS10jf0YDZZnTjyDvPm2
X-Google-Smtp-Source: AGHT+IGYhPceDBeo5lcWr74EsEhCqtuA1jD2BNecETU1tSRZBIpXXOXBfTqLCvZ2KaTfgEA0kZVi8A==
X-Received: by 2002:a05:6402:2b91:b0:5c7:202f:ec9b with SMTP id 4fb4d7f45d1cf-5cb8b1c125dmr6392590a12.16.1729773723848;
        Thu, 24 Oct 2024 05:42:03 -0700 (PDT)
Received: from able.fritz.box ([2a00:e180:1550:4200:da3c:7fbc:c60c:ca4b])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5cb66a65419sm5623026a12.25.2024.10.24.05.42.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2024 05:42:02 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: friedrich.vock@gmx.de,
	Richardqi.Liang@amd.com,
	dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org
Date: Thu, 24 Oct 2024 14:41:56 +0200
Message-Id: <20241024124159.4519-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spamd-Result: default: False [-1.46 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	BAYES_HAM(-0.36)[76.75%];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.46:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.218.46:from];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmx.de,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	TO_DN_NONE(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2C0BC40A8F
X-Spamd-Bar: -
Message-ID-Hash: YU7LBHVRTHA4LIKKLGXOXB7V5SK2DRIO
X-Message-ID-Hash: YU7LBHVRTHA4LIKKLGXOXB7V5SK2DRIO
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Fix Fix fence merge handling
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YU7LBHVRTHA4LIKKLGXOXB7V5SK2DRIO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi guys,

turned out that userspace can also merge dma_fence_chain contains
which can result in really huge arrays.

Fix those merges to sort the arrays and remove the duplicates.
Additional to that start to use kvzalloc() for dma_fence_array
containers so that can handle much larger arrays if necessary.

Please review and comment,
Christian.


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
