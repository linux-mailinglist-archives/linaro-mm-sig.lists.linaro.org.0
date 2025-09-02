Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7AFB40D84
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Sep 2025 21:04:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D011C42B42
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Sep 2025 19:04:37 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 8D08E42B42
	for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Sep 2025 19:04:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=WCC7UbjV;
	spf=pass (lists.linaro.org: domain of david@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=david@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1756839870;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=KTRbTb03LTpsY+kMi3vTzUOF7OI46/nmbSDtqXQsQaA=;
	b=WCC7UbjVULVsnbQ8fpcroUecyMlCO1tn48mpzkF+zz4IYKltiKIuqzg/5kDwB6CrdDtkVA
	HC0kJqerzbW3+H2usrJ+01i+oxGAOQmlG5zWjx2XWFZwj0W1vPG2vvJ7ls1EBM1CLvFFDL
	WbasZWoqj0NhwmTmvbO+nGQIveV7W9E=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-534-fPKHDvD-Oq-LHUyU5-UbcA-1; Tue, 02 Sep 2025 15:04:29 -0400
X-MC-Unique: fPKHDvD-Oq-LHUyU5-UbcA-1
X-Mimecast-MFC-AGG-ID: fPKHDvD-Oq-LHUyU5-UbcA_1756839867
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-45b80aecb97so39146315e9.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Sep 2025 12:04:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756839867; x=1757444667;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KTRbTb03LTpsY+kMi3vTzUOF7OI46/nmbSDtqXQsQaA=;
        b=t6NtY5lwxswcXA8aMDMMcGxvC5VZPRkp7BKzUEc692OxtUp4kieZIeAhVv5686KYZi
         12JrVeQWovdsFbycg5RHuhq/vyktpMQ8vhzVO3hL0hMrwITKvrrGJI0a5T/mlzu1RMIZ
         TPgeQpgYTVfS95VtnShoeNtfSWPVpzLZ6eVTCZPuyTy/m9jyVu6js975YMjwC9peC5h6
         mDvmxiduKFQhzXZw8oaAoyHAEC6JIZmR6GOtmVdNRr3tHohZgZcgzJ+EKGMiBRgvaSse
         8ogS8NAASe9KfU3KOdqTlFr6J/ReppfOpBUJK5Oejjc4OLOfoccOYSi1zmrZSmhE8UVp
         X44Q==
X-Forwarded-Encrypted: i=1; AJvYcCVW+Ai08TD/nq44k4e4EIdFBQyfy9js12fwYNtGUovB1eh87rtG6TS9PC2AnQOYcpfO8Oz1651gneNFfR8I@lists.linaro.org
X-Gm-Message-State: AOJu0Yy85uSsbgvN/jZUIPXe0ovFzXNV6PVoIp5Ghx+UpiXQwzUjfjHg
	rqUb92N0gDp/Zl+KjZ3Otye6LrRqY85bOGa4Rcl4QcOwnKEPi+qpkpANoq5ifcGXhSdB74RgwfW
	eswAGWRthZ6AF6CbDqquO7bGTXlWMMbAKHGdFLZ9qHHo3LfwcraK3Bnlx4XNG2jO/w2hC
X-Gm-Gg: ASbGncuGwwu+D5LDuvRj/S5aYvCFhsfC/h/FgbeYADbVbyKdJjeOyawtCVgbSJnG5e5
	lklVFkdnrPWMu2nI2ywQM7ibmjqy14kZUQre+eblTSlv1trdclzyFUqI4y5qCeM+FGl1jUoNwve
	7B5ME9Op1gg5Rp3DH/B3O343IT7nvdzvepDsLjkDr3lxa4DSh+/rD09g23Sxr2dDH9To6iXLkGH
	Lq5awValeiZ3VnUuicTCU2K3XZ7vzqml+W66isRPCFrCbw/+r4gq+F9CnSYzIqVN6XeI5DfD4Hl
	IBisuDu1jfzXxLXc80KTTsk3YgEuM9CcWId8sjtgMyzxzWdwjxwm5wAvfk46Nv54ABbG6R9425G
	wrwwPgMzjeC09iESf7YCQ6qyIk2mYu784F90sui6OzmWglpiOado6XXWdG58Nz8X04us=
X-Received: by 2002:a05:600c:3543:b0:45b:8822:d683 with SMTP id 5b1f17b1804b1-45b88321c6dmr85814385e9.4.1756839866921;
        Tue, 02 Sep 2025 12:04:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE4ZcW8yeA944p6sSftrTNNVzyMJNCGA2g5/WkaSIdV2mLjEgNupS0gXkk9kO1eEWTw0bxfSw==
X-Received: by 2002:a05:600c:3543:b0:45b:8822:d683 with SMTP id 5b1f17b1804b1-45b88321c6dmr85814075e9.4.1756839866506;
        Tue, 02 Sep 2025 12:04:26 -0700 (PDT)
Received: from ?IPV6:2003:d8:2f1f:3f00:731a:f5e5:774e:d40c? (p200300d82f1f3f00731af5e5774ed40c.dip0.t-ipconnect.de. [2003:d8:2f1f:3f00:731a:f5e5:774e:d40c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b7e886619sm205500415e9.15.2025.09.02.12.04.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 12:04:25 -0700 (PDT)
Message-ID: <e513c127-d4f4-4e93-8d4b-23d1e4fdceb5@redhat.com>
Date: Tue, 2 Sep 2025 21:04:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Frank van der Linden <fvdl@google.com>,
 Thierry Reding <thierry.reding@gmail.com>
References: <20250902154630.4032984-1-thierry.reding@gmail.com>
 <20250902154630.4032984-4-thierry.reding@gmail.com>
 <CAPTztWa7kcx8bBEJEKvnjcD4v1-eDLVxMd9C10XiBQi4CDLfHg@mail.gmail.com>
From: David Hildenbrand <david@redhat.com>
Autocrypt: addr=david@redhat.com; keydata=
 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
 qIws/H2t
In-Reply-To: <CAPTztWa7kcx8bBEJEKvnjcD4v1-eDLVxMd9C10XiBQi4CDLfHg@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 72dBO7HtPAQjVYJjjLfp599XhVAA5O4pQMIOlJQc3ME_1756839867
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8D08E42B42
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.90 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[170.10.133.124:from];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.133.0/24];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[google.com,gmail.com];
	TAGGED_RCPT(0.00)[dt];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:30031, ipnet:170.10.132.0/23, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linaro.org,kernel.org,collabora.com,arm.com,google.com,linux-foundation.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,kvack.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[redhat.com:+]
Message-ID-Hash: XO3RI7EV2B2KHAEF43KEH2EPPZM5M37T
X-Message-ID-Hash: XO3RI7EV2B2KHAEF43KEH2EPPZM5M37T
X-MailFrom: david@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, Mike Rapoport <rppt@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/9] mm/cma: Allow dynamically creating CMA areas
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XO3RI7EV2B2KHAEF43KEH2EPPZM5M37T/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit


>> +>> +struct cma *__init cma_create(phys_addr_t base, phys_addr_t size,
>> +                             unsigned int order_per_bit, const char *name)
>> +{
>> +       struct cma *cma;
>> +       int ret;
>> +
>> +       ret = cma_check_memory(base, size);
>> +       if (ret < 0)
>> +               return ERR_PTR(ret);
>> +
>> +       cma = kzalloc(sizeof(*cma), GFP_KERNEL);
>> +       if (!cma)
>> +               return ERR_PTR(-ENOMEM);
>> +
>> +       cma_init_area(cma, name, size, order_per_bit);
>> +       cma->ranges[0].base_pfn = PFN_DOWN(base);
>> +       cma->ranges[0].early_pfn = PFN_DOWN(base);
>> +       cma->ranges[0].count = cma->count;
>> +       cma->nranges = 1;
>> +
>> +       cma_activate_area(cma);
>> +
>> +       return cma;
>> +}
>> +
>> +void cma_free(struct cma *cma)
>> +{
>> +       kfree(cma);
>> +}
>> --
>> 2.50.0
> 
> 
> I agree that supporting dynamic CMA areas would be good. However, by
> doing it like this, these CMA areas are invisible to the rest of the
> system. E.g. cma_for_each_area() does not know about them. It seems a
> bit inconsistent that there will now be some areas that are globally
> known, and some that are not.

Yeah, I'm not a fan of that.

What is the big problem we are trying to solve here? Why do they have to 
be dynamic, why do they even have to support freeing?

-- 
Cheers

David / dhildenb

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
